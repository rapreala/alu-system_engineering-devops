#!/usr/bin/env bash

# Define a puppet manifest file
class ssh_config {

  class ssh_config {
  file_line { 'Turn off passwd auth':
    path => '/etc/ssh/ssh_config',
    line => 'PasswordAuthentication no',
  }

  file_line { 'Declare identity file':
    path => '/etc/ssh/ssh_config',
    line => 'IdentityFile ~/.ssh/school',
    match => '^#?\s*IdentityFile',
  }
}
