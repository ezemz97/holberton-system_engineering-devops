# Make changes to server ssh_config 

file_line {'Refuse password request':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match =>  'PasswordAuthentication yes',
  }
file_line {'Add identity file':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/holberton',
  }
