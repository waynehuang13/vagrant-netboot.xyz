./create-empty-box.sh

# Catch ctrl-c and clean up
function cleanup() {
    echo "Caught SIGINT, stopping VM"
    vagrant destroy -f

    exit 0
}
trap cleanup INT

# Bring up the VM - this will fail because Vagrant can't SSH to it, but that's fine
vagrant up || true

# Wait for Ctrl-C
while true; do
    sleep 10
done
