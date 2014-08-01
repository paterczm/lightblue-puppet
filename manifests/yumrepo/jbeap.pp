class lightblue::yumrepo::jbeap (
    $descr='JBEAP repo',
    $enabled=1,
    $gpgcheck=0,
    $gpgkey=absent,
    $metadata_expire=absent,
) {

  $baseurl = hiera('lightblue::yumrepo::jbeap::baseurl', 'http://pulp-gca03.util.phx1.redhat.com/pulp/repos/re/JBEAP-610')

  yumrepo { 'JBEAP':
    baseurl         => $baseurl,
    descr           => $descr,
    enabled         => $enabled,
    gpgcheck        => $gpgcheck,
    gpgkey          => $gpgkey,
    metadata_expire => $metadata_expire,
  }
}
