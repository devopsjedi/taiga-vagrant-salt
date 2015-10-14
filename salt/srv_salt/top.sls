base:
  '*':
    - hosts_file
    - user
    - dependencies
    - database
    - initialize_db
    - python
    - git_clone_backend
    - virtualenv
    - load_db
    - load_backend_settings
    - git_clone_frontend
    - load_frontend_conf
    - circus
    - nginx

