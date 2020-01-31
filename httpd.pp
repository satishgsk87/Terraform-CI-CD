exec {'install httpd':
  command => 'sudo yum install httpd -y',
  path => /bin/
}

exec {'Change Text':
  command => "sudo sed -i 's/Test Page/Wista final project/g' /usr/share/httpd/noindex/index.html",
  path => /bin/
}

exec {'start httpd':
  command => 'sudo systemctl start httpd',
  path => /bin/
}
