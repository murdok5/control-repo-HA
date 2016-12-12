class reposetup {

  node_group { 'PE Master':
    ensure               => present,
    environment          => 'production',
    override_environment => false,
    parent               => 'PE Infrastructure',
    rule                 => ['or', ['=', 'name', $::clientcert]],
    classes              => {
      'pe_repo::platform::el_7_x86_64'                   => {},
      'pe_repo::platform::windows_x86_64'                => {},
    },
  }
}
