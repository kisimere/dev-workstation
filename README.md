# Usage
 to run this playbook following things are needed

- vars.yml
    - username
    - password_username
    - username_git
    - mail_git
- pubkey under ~/.ssh/ansible.pub
- inventory file

```
ansible-playbook -i < inventory file > play.yml 
```
# TODO
- [ ] role mgm (add managment user and disable root login )
- [x] create a dev-workstaton role
- [ ] add wallpaper
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
