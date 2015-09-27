load database:
    cmd.run:
        - name: "$pathToVirtualenvPythonBin manage.py migrate --noinput && $pathToVirtualenvPythonBin manage.py loaddata initial_user && $pathToVirtualenvPythonBin manage.py loaddata initial_project_templates && $pathToVirtualenvPythonBin manage.py loaddata initial_role && $pathToVirtualenvPythonBin manage.py compilemessages && $pathToVirtualenvPythonBin manage.py collectstatic --noinput"
        - cwd: /home/taiga/taiga-back
        - env:
            - pathToVirtualenvPythonBin: /home/taiga/taiga-back/bin/python
        - user: taiga

#load sample data:
#    cmd.run:
#        - name: "$pathToVirtualenvPythonBin manage.py sample_data"
#        - cwd: /home/taiga/taiga-back
#        - env:
#            - pathToVirtualenvPythonBin: /home/taiga/taiga-back/bin/python
#        - user: taiga
