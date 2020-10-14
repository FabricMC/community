base:
    "*":  # All nodes
        - common/packages  # Do this one first

        - common/docker
        - common/services
    "fabricmc-discord.lxd":  # Specific to the Discord container
        - fabricmc-discord/fabric-bot
        - fabricmc-discord/modmail
