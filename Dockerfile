FROM ghcr.io/tailscale/tailscale:v1.44.0

ADD --chown=root:root --chmod=0555 run.sh /

CMD ["/run.sh"]
