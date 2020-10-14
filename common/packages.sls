install_packages:
    pkg.installed:
        - pkgs:
            - build-essential
            - git
            - htop
            - nginx-full

update_packages:
    pkg.uptodate:
        - name: "Update"
        - refresh: True
