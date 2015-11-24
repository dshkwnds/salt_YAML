base:
  '*':
    - init.env_init
prod:
  '*':
    - cluster.haproxy-outside
    - cluster.haproxy-outside-keepalived
    - web.bbs
  'node1.ethan.io':
    - memcached.service
