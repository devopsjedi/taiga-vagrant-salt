load taiga-back config file:
    file.managed:
        - name : /home/taiga/taiga-back/settings/local.py
        - source: salt://files/taiga-back_settings_local.py
        - user: taiga
