include:
    - git_clone_backend


make virtualenv:
    virtualenv.managed:
        - name: /home/taiga/taiga-back
        - python: /usr/bin/python3.4
        - user: taiga
        - requirements: /home/taiga/taiga-back/requirements.txt
        - cwd: /home/taiga/taiga-back
        - require:
            - git: https://github.com/taigaio/taiga-back.git

