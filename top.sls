base:
    "*":  # All nodes
        - common/packages  # Do this one first

        - common/docker
    "fabricmc-discord.lxd":  # Specific to the Discord container
        - fabricmc-discord/fabric-bot
        - fabricmc-discord/metrics
        - fabricmc-discord/modmail
        - fabricmc-discord/nginx
