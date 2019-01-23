run_my_script.sh:
  cmd.script:
  - name: docker.sh
  - source: salt://docker.sh

docker-ce:
  pkg.installed:
  - name: docker-ce

docker:  
  service.running:
    - enable: true 
    - require:
      - pkg: docker-ce

