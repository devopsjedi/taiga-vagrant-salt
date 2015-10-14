clone taiga-front-dist:
  git.latest:
    - name: https://github.com/taigaio/taiga-front-dist.git
    - target: /home/taiga/taiga-front-dist
    - rev: stable
    - user: taiga
include:
    - user
