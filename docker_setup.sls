network_utilities:
  pkg.installed:
    - source: wq 
    - pkgs:
      - curl

docker_pkg:
  pkg.installed:
    - name: docker

docker_service:
  service.running:
    - name: docker
    - enable: true
    - require:
      - pkg: docker_pkg
