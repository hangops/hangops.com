define python::virtualenv::exec(
  $command,
  $user,
  $cwd
) {
  include python::base

  python::virtualenv {
    "$cwd": user => $user;
  }

  file {
    "$cwd/run.sh":
      mode => 755,
      owner => $user,
      content => join([
        "#!/bin/sh",
        "cd $cwd",
        "",
        "(",
        "  . .virtualenv/bin/activate",
        "  pip install -r requirements.txt",
        "  $command",
        ") | logger -si -t puppet-virtualenv-exec",
        "",
      ], "\n");
  }

  exec {
    "$name":
      require => [
        Python::Virtualenv["$cwd"],
        Package["virtualenv"],
        File["$cwd/run.sh"]
      ],
      command => "$cwd/run.sh",
      path => [ "/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin" ],
      user => $user,
      cwd => $appdir;
  }
}
