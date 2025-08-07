## 🔐 File Permissions and Ownership in Linux

## 📖 What are Permissions?
Each file or directory has 3 types of access
**r** = read
**g** = write
**x** = execute

permissions apply to 3 categories:
**u** = user (owner)
**g** = group 
**o** = others
example 
 rwxr-xr-- 1 amina admins 1234 aug7 test.sh


## 👀 View Permissions
```bash
ls -l filename

🔧 Change Permissions (chmod)

chmod u+x script.sh    # add execute for user
chmod g-w file.txt     # remove write for group
chmod o+r file.txt     # add read for others


Or using numeric mode:


chmod 755 script.sh    # rwxr-xr-x
chmod 644 file.txt     # rw-r--r--

👑 Change Owner and Group


sudo chown amina file.txt       # change owner
sudo chown amina:admins file.txt  # change owner and group
sudo chgrp admins file.txt      # change only group


Practice Area

Try creating test files and changing permissions:


touch test.sh
chmod +x test.sh
ls -l test.sh

