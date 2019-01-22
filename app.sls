dg_repo:
  dockerng.image_present:
    - force: true
    - name: duoarc/dionglobal:latest

dg_app:
  dockerng.running:
    - name: mydg_app
    - image: duoarc/dionglobal:latest
    - port_bindings: 8081:5000