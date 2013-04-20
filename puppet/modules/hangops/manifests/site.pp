class hangops::site (
  $revision = "master",
  $source = "https://github.com/hangops/hangops.com.git",
  $user = "hangops.com"
) {
  include python::base
  include git

  user::app { $user: ; }
  $appdir = "/app/$user"

  vcsrepo {
    "$appdir/repo":
      ensure => latest,
      require => [ User::App[$user], Package["git"] ],
      owner => $user,
      provider => "git",
      revision => $revision,
      source => $source;
  }

  python::virtualenv::exec {
    "hangops.com":
      require => Vcsrepo["$appdir/repo"],
      command => "make html",
      user => $user,
      cwd => "$appdir/repo";
  }

  include apache::params
  apache::vhost {
    "hangops.com":
      require => Python::Virtualenv::Exec["hangops.com"],
      port => 80,
      serveraliases => [ "www.hangops.com", "localhost" ],
      docroot => "$appdir/repo/output";
  }
}
