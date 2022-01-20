#!/bin/sh

# root, system, and user accounts
# four main user admin files are located in /etc/passwd, /etc/shadow, /etc/group, /etc/gshadow

# main user commands are: useradd, usermod, and userdel
# main group commands are: groupadd, groupmod, and groupdel

# create a group syntax
# groupadd [ -g GID [-o]] [-r] [-f] groupname

# parameters
# -g GID - numerical value of the group's ID
# -o - This option permits to add group with non-unique GID
# -r - This flag instructs groupadd to add a system account
# -f - This option causes to just exit wtih success status, if the specified group already exists
# groupname - Actual group name to be created

# No specified parameters and the system will use default values
groupadd developers


# modify a group
groupmod -n new_modified_group old_group

# change developers group name to developer
groupmod -n developer developers

# change the groupID (GID)
groupmod -g 1002 developer


# delete a group
groupdel developer


# create an account syntax
# useradd -d homedir -g groupname -m -s shell -u userid accountname
# following example creates an account tom
useradd -d /home/tom -g developer -s /bin/ksh tom

# after user is created, can set password using passwd command
passwd tom20


# modify account using the usermod command syntax(same arguments as useradd plust -l to change account name)
usermod -d /home/thomas -m -l tom thomas


# delete an account
# userdel command can be used to delete existing user, use with caution, can omit -r to keep home directory for backup purposes
userdel -r thomas
