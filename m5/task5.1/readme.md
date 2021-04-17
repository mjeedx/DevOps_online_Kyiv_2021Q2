### Task1.Part1


1. Command `su` switches user to root. To choose another user just type `su user_name`


2. To change account's password use `passwd` command. Passwd has many userfull parameters, among of them are: 
-l, locks account;
-i, this key set amount of day when account has been expired;
-d, can delete user's password (realy userfull  thing ;))))
All changes store in the /etc/passwd file.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/1.2.jpg)

3. `w` command shows us users, which now registered in the system and currently launched commands. Also we can discover way, IP address and login time of the connections.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/1.3.jpg)

4. To change user's personal information use `chfn`.This ulility runs just during system system installation and provides to change full name(-f), phone number(-h, -w), room number(-r), etc.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/1.4.jpg)

5. `man` shows manuals for all registered in the system commands. You can find out how to use commands and keys. To use it just type `man + name_of_the_command`. Man pages userfull for quick recall the keys. For example, command `w` has next keys: 
'w -h', - remove headers from output;
'w -i', display ip addresses instead of hostname 
'w user', display information about only one user

6. There are many differences between `more` and `less` utils, one of them - `less` provides you turn pages forward and back, it's more fresh and we have to use it instead more.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/1.6.jpg)

7. `finger` is a utility which provides to watch information about user. Users can fill some information in .plan file, so finger can show it

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/1.7.jpg)




### Task1.Part2


1. `sudo tree -L 2 -P '*c*' /` 
filter -L 2 gives me a list of folder beginning from the root folder but including only 1st and 2nd nesting level. 
Also -P '*c*' shows me only files including letter 'c'  in filename. You can use any sequence of characters.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.1.jpg)


2. `file` - the command used for determining file type, like text, binary, etc.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.2.jpg) 

3. You can reach to the file of directory using full path, to open a file located in current directory just type his name as argument, to reach the file or directory located in the neighbour dir, just use relative path:

```
cd /home/mjee/script/files/ 
more first.txt
more ../dir_in_a_dir/file_in_a_dir
```

To reach home directory from any place just use it's abs path: /home/$USER

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.3.jpg) 


4. Empty `ls` command gives you just list of files and folders, 
ls -a adds files started with . (dot, hidden), 
ls -l will show you list of files and folders, permissions, owners, 

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.4.jpg)


5. To make a task 5.2.5 use next sequence of commands:

```
cd /home/mjee && mkdir epam5.1 && cd epam5.1
ls -l  / > root_list.txt
cat root_list.txt
cp root_list.txt ../root_list_rel.txt
cp root_list.txt /home/mjee/root_list_abs.txt
cd .. && rm -r epam5.1 && ls
rm root_list_rel.txt root_list_abs.txt
date
```
![2.5](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.5.png)

6.  First, we have to create directory copy .bash_history file into it, after create soft and hard links.
If we create sym link and change data, it will change data in linked file, cuz when we open symlink in fact we open original file. Also hardlink and original file have same inode nomber and npermissions.
If you rename sym or hardlink they will still work. If you remove labwork2 file - hardlink still work, but softlink is broken and return "No such file or directory error"

```
cd /home/$USER && mkdir test
cp .bash_history test/labwork2
ln -s /home/mjee/test/labwork2 /home/mjee/test/softlink_labwork2
ln /home/mjee/test/labwork2 /home/mjee/test/hardlink_labwork2
cd test
tail -n 3 labwork2 
echo "sometext" >> labwork2
tail -n 3 labwork2
ls -lia
mv hardlink_labwork2 hard_lnk_labwork2
mv softlink_labwork2 symb_lnk_labwork2
ls -lia
rm labwork2
ls -lia
```

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.6.jpg) 

7. To find all files that contain some sequences just use `locate` command. Example for squid and traceroute are below:

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.7.jpg) 

8. `df` command allow you to see what partitions mounted in a system, mount point, type of file system, free and available space, etc.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.8.png) 

9. To count the number of lines that contain a "man" sequence, use bunch of grep and wc commands:

`grep "man" .bash_history | wc -l `

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.9.jpg)

10. To find files, containing the "host" sequence in /etc directory use:

` sudo find -type f -name "*host*" `

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.10.jpg)

11. To list all objects in /etc directory that contain the ss sequence, you can use ls and grep:

` ls -al | grep "ss" `

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.11.jpg)

12. To watch screen by screen print of the contents of the /etc dir use "ls & less" pair:

` ls -al | less `

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.12.jpg)

13. All devices in Linux are file. There are two types of devices: block and character.
Most of block type files located in /dev. All hardware have block file type and provides random access to it's own data. Example may be HDD, FDD. 
Character device file type provides a serial stream of input and output. Example may be terminals. 
To see them use "ls -l" command. First letter "c" means character device, "b" - block device.

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.13.jpg)

14. Also first letter in output of "ls -l" command shows you types of files. There are:
- regular files, most common file type, like a text, images, binary, etc. (-);
- symbolic links, allow to link files to other files(l);
- socket files, is used to pass information between applications(s);
- directory, yes it is also a file(d).

15. To watch 5 recently watched files, use next bunch: 
' ls -ltr | tail -n 5 '

![1](/home/mjee/epam/DevOps_online_Kyiv_2021Q2/m5/task5.1/screenshots/2.15.png)