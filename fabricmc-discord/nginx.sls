fabricmc_discord_nginx:
    service.running:
        - name: nginx

        - enable: True
        - reload: True

        - watch:
            - file: fabricmc_discord_nginx_files
        
        - acme: l.modm.us
        - acme: sentry.fabricmc.community

fabricmc_discord_nginx_files:
    file.recurse:
        - name: /etc/nginx/sites-enabled
        - source: salt://fabricmc-discord/etc/nginx/sites-enabled

l.modm.us:
    acme.cert:
        - webroot: /srv/acme
        - renew: 14
        - certname: l.modm.us

sentry.fabricmc.community:
    acme.cert:
        - webroot: /srv/acme
        - renew: 14
        - certname: sentry.fabricmc.community
