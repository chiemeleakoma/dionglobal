run_my_script.sh:
  cmd.script:
  - name: docker.sh
  - source: salt://docker.sh

nginx_pkg:
  pkg.removed:
  - name: nginx

docker-ce:
  pkg.removed:
  - name: docker-ce

docker:  
  service.running:
    - enable: true 
    - require:
      - pkg: docker-ce
