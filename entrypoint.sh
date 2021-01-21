#!/bin/bash
wg-quick up wg0

# curl https://am.i.mullvad.net/connected

exec "$@"