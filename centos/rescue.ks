sshpw --username=root $6$3STtFL7URiA0uvWz$kkpLWcPRFqE/2ESx1k6P/tkzZJzqULvNLCx6BgqzPJ95scGhvi8m8rvM9kjYwEqiPK1hxaTvxLrQcufQBCXvd/ --iscrypted
%pre --interpreter=/usr/bin/bash
mkdir -p /root/.ssh/
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA6VnqPHJXqesCojGjoB+NuSGxDrJ3zDX3uKCFcqDC79kHexaK6nNL9Bgl4WeVe90geiK39HucQKIVNGuPw34jkdlzZr0yvvvSz40vfAFtuHYbeRi676zvMaNDv9r0ck7iXaaCKBX2fu3/Dcx8J2cxWiDiLTwAte1tHu0wQvYZbtv7VFhwzImqKyyjZhYks99zY5UWzFTf/jXw4dybR+1GuL24ehPG1JN1gGLbvbB6zSWOQIFKk1/ZrLfxfUQNoKNQDzoffiFiZR9JZHnRNbZA4WVO0x0XeB/D3XFvLonDu8k1F8tTIc0LllZh8oJr17DLZ6MKKuazLIFpZ+wnJLY2gQ== hostkey' > /root/.ssh/authorized_keys
sed -i '/PermitEmptyPasswords/d'  /etc/ssh/sshd_config.anaconda
echo 'PermitEmptyPasswords no'  >>  /etc/ssh/sshd_config.anaconda
pkill -1 sshd
%end
