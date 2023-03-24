#!/usr/bin/env bash

# Define a puppet manifest file
class ssh_config {

  # Define a file line resource that turns off password authentication in ssh config
  file_line { 'Turn off passwd auth':
    path  => '/etc/ssh/sshd_config',
    line  => 'PasswordAuthentication no',
    match => '^#?PasswordAuthentication',
  }

  # Define a file line resource that declares identity file in ssh config
  file_line { 'Declare identity file':
    path  => '/etc/ssh/ssh_config',
    line  => 'IdentityFile ~/.ssh/school',
    match => '^#?IdentityFile',
  }
}

# Apply the ssh_config class to the node
include ssh_config

