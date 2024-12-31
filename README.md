# Vagrant + netboot.xyz + VMware Fusion
## Vagrant Environment for a Preboot Execution Environment (PXE)
This Vagrant Environment lets you PXE boot a bunch of installers and utilities on your (only work on) Apple silicon.

## Tech stack:
- Vagrant
    ```bash
    brew install --cask vagrant
    ```
- VMware Fusion
    ```bash
    brew install --cask vmware-fusion
    ```
- VMware pluging: [vagrant-vmware-desktop](https://github.com/hashicorp/vagrant-vmware-desktop)
    ```bash
    brew install --cask vagrant-vmware-utility
    ```
- [netboot.xyz](https://netboot.xyz/) for PXE boot

It's using the vmnet DHCP service comes with VMware Fusion to hand out IP addresses. When PXE client(empty vm) makes a DHCP request, the netboot VM responds to announce itself as a TFTP network boot target.

## Why would I want this?
I created this because I want to have a fast, and repeatable environment to test PXE boot before I set up PXE boot proxmox for my homelab(Dell C6220 cloud server 4 nodes).

## How do you use it?
Make sure you have the whole stack installed.
Just run:
```bash
./run_stack.sh
```

It will create the empty vagrant box for VMware fusion, and add it to vagrant. Then spins up the netboot VM and the client(empty box) for PXE boot. That's it!


## Contributing
Found a problem Open an Issue on the repo, I'll try and get back to you.

Fixed a problem Yay! Open a PR!