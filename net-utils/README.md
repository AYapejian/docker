# ayapejian/net-utils

Provides network utilities along with mDNS working for reaching lan hosts from container.

NOTE: Have to run with `--network host` to get container <-> lan communication working on Ubuntu 18, need to look into this more, haven't tested other OSs

## Running
* `docker run --network=host --rm -it ayapejian/net-utils`
  * `docker run --network=host --rm -it ayapejian/net-utils bash` (Same as above)
* `docker run --network=host --rm -it ayapejian/net-utils ping somehost.local`

