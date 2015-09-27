include: 
    - database
create db user:
    postgres_user.present:
    - name: taiga
    - require:
        - sls: database
create db:
    postgres_database.present:
    - name: taiga
    - owner: taiga
    - require:
        - sls: database
