# Usage
 to run this playbook following things are needed

- vars.yml
    - username
    - password_username
- pubkey under ~/.ssh/ansible.pub
- inventory file

```
ansible-playbook -i < inventory file > play.yml 
```
or with an vault
```
ansible-playbook --ask-vault-pass -i < invetory file > play.yml
```
# TODO
- [ ] role mgm (add managment user and disable root login )
- [x] create a dev-workstaton role
- [ ] fix picom (mesa,glx) 
- [x] role update system 
- [x] role suckless
- [x] role neovim
- [x] role yubikey
- [ ] role macbook
- [ ] clean up roles
- [ ] integrate xcheckrestart for restarting services
- [ ] cleanup the playbook
- [ ] add screenshots

# Notes

yubikey role needs the services elogind, dbus, eudev enabled.
