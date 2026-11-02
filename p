





























































































































[main]
server = pserver
runinterval = 60


sudo puppet agent -t

sudo puppetserver ca sign --certname pclient


sudo mkdir -p /etc/puppetlabs/code/environments/production/manifests


node 'client' {

    package { 'nginx':
        ensure => installed,
    }

    service { 'nginx':
        ensure => running,
        enable => true,
        require => Package['nginx'],
    }

}
