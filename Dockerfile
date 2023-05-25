FROM ghcr.io/tailscale/tailscale:v1.40.1
# FROM ghcr.io/tailscale/tailscale:v1.42.0

ADD --chown=root:root --chmod=0555 run.sh /

CMD ["/run.sh"]
