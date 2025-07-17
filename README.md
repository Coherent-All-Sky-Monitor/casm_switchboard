# CASM SwitchBoard

**CASM SwitchBoard** is a collection of Ansible playbooks for discovering, viewing, and managing the NVIDIA/Mellanox SN3420 swtich running Cumulus Linux for CASM. .

## Structure

- `inventory/hosts.ini` — CASM switch inventory
- `playbooks/` — Playbooks to show and manage switch state

## Usage

```sh
ansible-playbook -i inventory/hosts.ini playbooks/show_switch_interfaces.yml
