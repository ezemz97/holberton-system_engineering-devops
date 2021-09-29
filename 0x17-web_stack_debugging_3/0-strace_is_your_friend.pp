# Fix a typo in wordpress settings
exec { 'wordpress config typo':
  command => '/bin/sed -i s/phpp/php/g /var/www/html/wp-settings.php; sudo service apache2 restart',
}
