clone taiga-back:
  git.latest:
    - name: https://github.com/taigaio/taiga-back.git
    - target: /home/taiga/taiga-back
    - rev: stable
    - user: taiga
include:
    - user
