class mpssh (
  $home = "/home/eulisse",
  $src = "$home/src",
  $prefix = "$home/sw",
  $repo = "ndenev/mpssh"
)
{
  include protobuilder

  protobuilder::build{"mpssh":
    repo => "$repo"
  }->
  file {"${home}/.mpssh":
    ensure => directory,
    mode => "0755",
  }->
  file {"${home}/.mpssh/hosts":
    ensure => symlink,
    target => "${home}/dotfiles/mpssh-hosts",
  }
}
