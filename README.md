andrewrothstein.maven
=========
![Build Status](https://github.com/andrewrothstein/ansible-maven/actions/workflows/build.yml/badge.svg)

Installs and configures [maven](https://maven.apache.org/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.maven
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
