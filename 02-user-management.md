# Linux User and Group Management

## 1. Create a new user
sudo adduser amina

## 2. Create a new group
sudo groupadd admins

## 3. Add user to a group
sudo usermod -aG admins amina

## 4. Give sudo access
# Option 1: Add to sudo group
sudo usermod -aG sudo amina

# Option 2: Edit sudoers file
sudo visudo

## 5. Lock and unlock user
sudo usermod -L amina   # lock
sudo usermod -U amina   # unlock

## 6. Delete user
sudo deluser amina

## 7. Delete group
sudo groupdel admins

