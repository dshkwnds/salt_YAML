yum_repo_release:
  pkg.installed:
    - sources:
      - epel-release: http://mirrors.opencas.cn/epel/6/x86_64/epel-release-6-8.noarch.rpm
    - unless: rpm -qa  | grep epel
