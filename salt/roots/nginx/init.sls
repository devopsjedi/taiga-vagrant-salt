install nginx:
    pkg.installed:
        - name: nginx

load taiga nginx site configuration:
    file.managed:
        - name: /etc/nginx/sites-available/taiga
        - source: salt://files/etc_nginx_sites-available_taiga

disable default nginx site:
    file.absent:
        - name: /etc/nginx/sites-enabled/default

enable taiga nginx site:
    file.symlink:
        - name: /etc/nginx/sites-enabled/taiga
        - target: /etc/nginx/sites-available/taiga

nginx:
    service.running:
        - enable: True
        - reload: True
        - watch:
            - file: /etc/nginx/sites-enabled/taiga
