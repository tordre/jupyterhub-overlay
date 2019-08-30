# jupyterhub-overlay
An attempted jupyterhub overlay for Gentoo, I'm gonna stress this I don't know what I am doing please don't use this until I remove this warning from the page.


I repeat i dont know, but a layman conf might be something like this?

```
    [jupyterhub-overlay]
    priority = 50
    location = /var/lib/layman/jupyterhub-overlay
    layman-type = git
    sync-type = git
    sync-uri = https://github.com/tordre/jupyterhub-overlay.git
    auto-sync = Yes
```