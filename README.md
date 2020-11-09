# Media Server
This is my media server configuration that uses rclone to store my media library in google drive.
## requirements
 - docker
 - docker-compose
 - fuse
 - docker plugin `sapk/plugin-rclone:latest`
 - enought local disk space for torrents to be cached while they upload/seed
## running
 - configure rclone for your user with `rclone config`
 - run bootstrap via `sh bootstrap.sh`
 - `docker-compose up -d`
## post install
### jackett
 - add wanted indexers
### sonarr
 - set download client to qbittorrent
 - set torznab indexers
 - enable metadata
### radarr
 - set download client to qbittorrent
 - set torznab indexers
 - enable metadata
### jellyfin
 - add sonarr/raddarr api hooks
## notice
You use this configuration at your own risk.
