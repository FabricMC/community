service_caddy:
    service.running:
        - name: "caddy"
        - enable: True

service_haveged:
    service.running:
        - name: "haveged"
        - enable: True
