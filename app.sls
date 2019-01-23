python-pip:
  pkg.installed

dockerpy:
  cmd.run:
    - name: pip install docker-py
    - reload_modules: True
    - require:
      - pkg: python-pip

duoarc/dionglobal:  
  dockerng.image_present

stop_dgapp:
  cmd.run:
    - name: docker stop dgapp

rm_dgapp:
  cmd.run:
    - name: docker rm dgapp

dgapp:
  cmd.run:
    - name: docker run -d -p 8080:5000 --rm --name dgapp duoarc/dionglobal
