modmail_pull:
  module.run:
    - name: dockercompose.pull
    - path: /srv/compose/modmail

modmail:
  environ.setenv:
    - value:
        TOKEN: "{{ pillar["env"]["MODMAIL_TOKEN"] }}"

  module.run:
    - name: dockercompose.up
    - path: /srv/compose/modmail
