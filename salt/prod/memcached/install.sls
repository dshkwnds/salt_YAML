include:
  - libevent.install
memcached-source-install:
  file.managed:
    - name: /usr/local/src/memcached-1.4.25.tar.gz
    - source: salt://memcached/files/memcached-1.4.25.tar.gz
    - user: root
    - group: root
    - mode: 644
  cmd.run:
    - name: cd /usr/local/src && tar xvf memcached-1.4.25.tar.gz && cd memcached-1.4.25  && ./configure --prefix=/usr/local/memcached --enable-64bit --with-libevent=/usr/local/libevnet && make && make install
    - unless: test -d /usr/local/memcached
    - require:
      - cmd: libevent-source-install
      - file: memcached-source-install
