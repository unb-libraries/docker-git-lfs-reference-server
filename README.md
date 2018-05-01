# unblibraries/git-lfs-reference-server:alpine [![](https://images.microbadger.com/badges/image/unblibraries/git-lfs-reference-server:alpine.svg)](http://microbadger.com/images/unblibraries/git-lfs-reference-server:alpine "Get your own image badge on microbadger.com") [![Build Status](https://travis-ci.org/unb-libraries/docker-git-lfs-reference-server.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-git-lfs-reference-server)
A minimal, baseline git-lfs-reference-server container.

## Repository Tags
Only one tag is available:

|               Tag              | Size                                                                                                                                                                                 | Status                                                                                                                                               |
|:------------------------------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
|    unblibraries/git-lfs-reference-server:alpine   | [![](https://images.microbadger.com/badges/image/unblibraries/git-lfs-reference-server:alpine.svg)](http://microbadger.com/images/unblibraries/git-lfs-reference-server:alpine "Get your own image badge on microbadger.com")          | [![Build Status](https://travis-ci.org/unb-libraries/docker-git-lfs-reference-server.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-git-lfs-reference-server)      |

## Usage
```
docker run \
        --rm \
        --name git-lfs-reference-server \
        -e LFS_LISTEN=tcp://:6983 \
        -e LFS_HOST=localhost:6983 \
        -e LFS_CONTENTPATH=/data \
        -e LFS_ADMINUSER=notadmin \
        -e LFS_ADMINPASS=notadminpass \
        -e LFS_SCHEME=http \
        -v /local/dir:/data \
        -p 6983:6983 \
        unblibraries/git-lfs-reference-server:alpine
```

A docker-compose file is also included for convenience.

## Https?
https can be leveraged by injecting additional environment variables as
described in the [reference server documentation](https://github.com/git-lfs/lfs-test-server).

## License
- unblibraries/git-lfs-reference-server is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `git-lfs-reference-server Docker Container by UNB Libraries`
