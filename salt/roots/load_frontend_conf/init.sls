load frontend config file:
    file.managed:
        - name: /home/taiga/taiga-front-dist/dist/js/conf.json
        - source: salt://files/taiga-front-dist_dist_js_conf.json
        - user: taiga 
