class python::base {
  package {
    "python": ensure => latest;
    "python-pip": ensure => latest;

    "virtualenv":
      require => Package["python-pip"],
      provider => "pip",
      ensure => "latest";
  }
}
