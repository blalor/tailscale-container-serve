FROM ghcr.io/tailscale/tailscale:v1.48.2

ADD --chown=root:root --chmod=0555 run.sh /

CMD ["/run.sh"]
