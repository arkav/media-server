rm .env
BASE_DIR=$(pwd)
echo "set base dir: ${BASE_DIR}"
echo "BASE_DIR=${BASE_DIR}" >> .env
PUID=$(id -u)
echo "set uid: ${UID}"
echo "PUID=${UID}" >> .env
PGID=$(id -g)
echo "set gid: ${GID}"
echo "PGID=${GID}" >> .env
PUMASK=$(umask)
echo "set umask: ${UMASK}"
echo "UMASK=${UMASK}" >> .env
RCLONE_CONFIG=$(base64 -w0 ~/.config/rclone/rclone.conf)
echo "RCLONE_CONFIG=\"${RCLONE_CONFIG}\"" >> .env
read -p "Enter rclone bucket name: " RCLONE_BUCKET
echo "RCLONE_BUCKET=\"${RCLONE_BUCKET}\"" >> .env
echo "REMEMBER TO PLACE YOUR OPENVPN CONFIG FILES IN config/qbitorrent/openvpn"
