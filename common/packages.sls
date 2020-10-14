install_packages:
    pkg.installed:
        - pkgs:
            - base-dev
            - git
            - havegd
            - htop
            - caddy

update_packages:
    pkg.uptodate:
        - name: "Update"
        - refresh: True
