# Fix a typo in wordpress settings
exec { '/bin':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php; sudo service apache2 restart',
}
