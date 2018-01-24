# Create your own custom cmd commands
`Windows only`


![Preview](https://raw.githubusercontent.com/mt-webdev/custom-cmd-commands/master/ccc.PNG)


# Create for yourself

1. Navigate to **any path** on your computer, for instance, your user's folder `C:\users\USERNAME\`
1.1 or just enter `%userprofile%`
2. At your **specified path**, create a **folder** like `my-custom-cmd`. In there you start creating you **.bat-files**
3. Now you need to register the **created folder** to your **environment variables** on windows
3.1 I would suggest adding it to the already existing **PATH** variable
3.2 If you don't know how just add your windows version to this [google search](https://www.google.de/search?q=how+to+edit+environment+variables+windows)  ;) 
4. **/Woohoo/** now just re-/open your console of choice and be happy about your custom commands!
4.1 How? Just type in the names of the created **.bat-files** like `> gc` if you have a **gc.bat** file
++PS: I would suggest also making this a git-repo for yourself, as git repos are awesome for common reasons++


# Use this repo as a starting point

1. Follow the **Create for yourself** section until step **#3**
2. Clone this repo into there like `git clone https://github.com/mt-webdev/custom-cmd-commands.git`
3. Keep following the **Create for yourself** instructions from step **#3.1**

## Bonus
As you can see in the files `deploy-a1.bat` and 'deploy-a2.bat' I am executing some **.ps1 (PowerShell)** scripts.
I use those for some more complex scenarios and it works just fine!

## Contribute
I really appreciate your support and interest in making every one of us more productive and efficient in using the console.
If you feel like i am missing some awesome shortcut feel free to hit me up with a PR **:)**

Also, I am aware of some better 'All-In-One' solutions but I like having this setup as my backup which I can use on any PC, without much of an effort.
