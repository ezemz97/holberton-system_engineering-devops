# Executes the command 'pkill' to kill the process 'killmenow'
exec { 'killmenow':
  command => 'pkill killmenow',
  path    => ['/usr/bin']
  }
