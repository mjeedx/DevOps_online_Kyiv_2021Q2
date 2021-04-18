5.2

1. /etc/passwd file stores users and system accounts information. Every line describes 1 account. The fields divided by colon symbol (":"), the fields are:
username, password, userID, GroupID, UserInfo(comments, full name, phone number, room, etc), home directory, command(shell).
/etc/passwd file store info about groups. Fields also divided by colon symbol and consist of: 
group name, group password, GID, usernames-list. 

There are much of users and groups, used for dividing access rights between users and services. Exmple: user "www-data" runs web applications, "syslog" used for running logging systems, "daemon" for daemons. 
The very important is last fild of passwd file - shell field. If you fill it by "/usr/sbin/nologin" - you will disable ability to login by this username. Even if hacker stole password, he can't use it to login.

2-4. UID is a unique identity of the user. Also, it helps to exactly differ similar usernames. UIDs from 1 to 999 are reserved by system services, (root is zero UID ), UIDs of generic users accounts starts from 1000.  GID has familiar description as UID, but it belongs for groups, not users. 
To see UID run command `grep $USER /etc/passwd`, digit after second colon is a UID.
You can see GID using `grep $USER /etc/group`, also after second colon symbol in a row, which starts from exact username. Strings, containing wanted username after last colon shows groups the user belongs to. 

5. For creating new users, use command `sudo adduser username`, also you need to enter password, and optionaly Full Name, Room number, work and home numbers, comments.  Also you can use `useradd` utility.

6. To change username use `sudo usermod -l NewUserName CurrentUserName`

7. /etc/skel file with template of settings used `useradd` to create user's home dir. 

8. To remove user account with it's mail account use command `sudo userdel -r username`. 

9.  To lock user account use `usermod -L username` command, to unlock use `-U` key. 

10. To remove users password and provide free next access to change password use command `passwd -de username`

11. `ls -lsi` shows list of directories. There are next columns: 
- inode;
- access wrights;
- count of links to the file;
- owner user;
-owner group;
- file size in bytes;
- date&time stamp of last modification;
- file name;

12. There are 3 types of access: r - read assess, w - write, x - execute(for files, accessible for dirs) all they apply for three mainj roles: user, file owner, group owner, and another users and groups. 

13. Permissions sets in next sequence owner, group, others. 

14. To change file/dir owner use command `chmod user_owner:group_owner /path/to/file`. For changing access mode use `usermod file_permissions path/to/file`. For example - change file owner from root to my user and give me full access, and read only for group and others:

15. Octal representations of access wrights is more comfort to use. Bt this way writes sets using digits from 0 up to 7, where 0 means none permissions, 7 - full permissions. 
777  - means full permissions for owner, group and others;
755 - full for owner, read and execute for group and others;
544 - write and execute for owner, just read for group and others.

Command umask changes default permissions for newly created files and folders. Create file with `umask 022` will set permissions 755. Every octal digit from umask 022 subtract from appropriate digit in 777.

16. Sticky bit is special parameter, which gives user ability to share full access to its  files, but no one except owner and root can't delete this file. Example - /tmp folder, anyone can add files, read files of others users, but can delete only its own created files. To set up sticky bit to the folder you have to use `chmod +t /path/to/folder`.

17. When you made a script, you can't execute it just using `./file_name.sh` command. Firstly you need to set up execute bit to the file attributes, to do that just type `chmod +x file_name`. 
