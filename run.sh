#!/bin/sh
set -e -u

ts="tailscale --socket /tmp/tailscaled.sock"

containerboot &

while ! ${ts} status ; do
    echo "status failed; pausing"
    sleep 3
done

echo "status succeeded"

${ts} serve https / "http://127.0.0.1:${SERVE_PORT}"
echo "served"

${ts} funnel 443 on
echo "funneling"

echo "waiting"
wait

