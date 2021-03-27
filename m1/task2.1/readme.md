PART 1. HYPERVISORS

There are three most popular hypervisors used in production: Microsoft Hyper-V, VMware ESXI, KVM.

All of hypervisors divides in two types: 1st and 2nd type. 
First type Hypervisors installed directly on the clean server hardware like os, minimizing overhead. Examples are MS Hyper-V, VMware ESXI, KVM.
Second type hypervisor installed over the operating system, like common application. Hardware access is taken through host operating system, what increases overhead in resource consumption. For example: Oracle VirtualBox, VMware Vorkstation.

Part 2. WORK WITH VIRTUALBOX

First of all I had to download and install VirtualBox. 
Secondly I installed Ubuntu Desktop (Ub1_Zarichnyi). 
RCtrl + Q opens menu, where you can: 
	- save current state of the virtual machine and restore it later, 
	- shutdown machine smootly,
	- shutdown machine with/without restoring latest snapshot
After I created clone of the virtual machine(Clone_Ub1_Zarichnyi):
Then I put machines into different groups. Groups allows us to control multiple machines at the same time.

![1.7](screenshots/1.7.jpg)

One more feature is snapshots. It's like a Git for virtual machines. Snapshots give us possibility to freeze and save the state of the VM and return to any of them.

![1.8](screenshots/1.8.jpg)

Export and importing of the VMs helps to migrate VMs. 
You can export VM into *.ova file, copy file to another machine and import it.

There are many options you can find in menu Machine->Settings (Ctrl+S). 
This is the point, whee you can edit all settings of the VM.

In submenu "USB" yuo can redirect USB device which connected to the host machine directly into VM

Same you can do with any folder in the pc:
![2.3](screenshots/2.3.jpg)

There are many variants network connections. Official documentation provides us 