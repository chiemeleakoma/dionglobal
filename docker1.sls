
nginx_pkg:
  pkg.installed:
  - name: nginx

docker-engine:
  pkg:
    - installed

docker:  
  service.running:
    - enable: true 
    - require:
      - pkg: docker-ce
