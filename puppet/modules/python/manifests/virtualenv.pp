define python::virtualenv(
  $user,
) {
  include python::base

  if !defined(File["$name/.virtualenv"]) {
    file {
      "$name/.virtualenv":
        ensure => directory,
        owner => $user;
    }
  }

  exec {
    "virtualenv $name/.virtualenv":
      require => [ Package["virtualenv"], File["$name/.virtualenv"] ],
      path => [ "/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin" ],
      user => $user;
  }

}
