install circus:
    pip.installed:
        - name: circus

load circus config file:
    file.managed:
        - name: /home/taiga/circus.ini
        - source: salt://files/circus.ini
        - user: taiga

load circus service config file:
    file.managed:
        - name: /etc/init/circus.conf
        - source: salt://files/circus.conf
        - user: taiga

create log dir:
    file.directory:
        - name: /home/taiga/logs
        - user: taiga

start circus service:
    service.running:
        - name: circus
        - require:
            - file: /etc/init/circus.conf
            - file: /home/taiga/logs
