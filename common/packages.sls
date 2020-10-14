install_packages:
    pkg.installed:
        - pkgs:
            - build-essential
            - git
            - haveged
            - htop
            - caddy

update_packages:
    pkg.uptodate:
        - name: "Update"
        - refresh: True
