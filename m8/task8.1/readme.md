task8.1


First we have to install Jenkins. I'll not show you all steps how to do it cuz process is pretty easy to make.
So Jenkins, locales, plugins installed.
We're creating SSH keys, and copy them into github and machine with Apache server:

![1](screenshots/3.1.jpg)

After connect to the Apache server and set rights for /var/www directory:

![1](screenshots/3.2.jpg)

Create Git repo with simple html and readme files, push it into the Github:

![1](screenshots/4.1.jpg)

After make pipeline, create credantials, settings for Publish over SSH plugin:

![1](screenshots/5.1.jpg)

...and build the project. If all things work you'll see index.html page on the apache machine

![1](screenshots/6.1.jpg)
![1](screenshots/6.2.jpg)

Add some new content into index.html, push in on the Github and run Jenkins project. You'll see your changes:

![1](screenshots/7.1.jpg)
![1](screenshots/7.2.jpg)

After configure Github Webhooks and test it by making changes in the index.html:

![1](screenshots/8.1.jpg)
![1](screenshots/8.2.jpg)
![1](screenshots/8.3.jpg)





