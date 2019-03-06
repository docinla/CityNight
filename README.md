# CityNight
KDE Live Desktop Animation of a City Skyline with QML

This is a QML animation that works with KDE Plasma desktop. 
**Please note!!!** This will ONLY WORK if your KDE distribution is based on QT version **5.12.1** or greater 

This is because there is a bug (https://bugreports.qt.io/browse/QTBUG-71195) that will crash the QML engine in earlier versions. 

As of now I think this only works on the latest Arch, Antergos, and Manjaro distributions. KUbuntu 18.04 and 18.10 or KDE fedora 29 won’t work because they use an unpatched QT version (5.11 something). 

1) If you enjoy this desktop and use it, I request that you please donate to the KDE project any amount of your choosing (https:/kde.org/community/donations/) I am in no way affiliated with KDE but I think the work they do is wonderful and this is my small, crappy way of giving back. 

2) Please do not make fun of me for how terrible the code and/or solution are to get this working. It was hours of using python scripts to generate "rectangles" as pixels and then chiseling them away. If you know a better solution that I can understand, please let me know or help! I kinda cobbled it together and it’s a gigantic beast because I couldn’t figure out how to
split up the file into multiple working off the example animated desktops provided. 

3) **PERFORMANCE:** It will take a *WHILE* to compile the scene. So when you select it, expect a black background for maybe 30 minutes or more? It takes about 30 minutes for my laptop's 5th gen intel core i5 to compile it. So be patient. Once it's compiled the scene to a .qmlc, it should be cached so that when you switch to it in the future (assuming no changes were made), it'll pop up quickly. I see about 15-30% incr in CPU usage on my VirtualBox with it running vs an image. It got significantly worse when I tried to add an animation for a fading red light or a shooting star so I axed those. Please let me know if there's an easy way of making it more efficient.

4) Thus far it looks best on **1080p** resolution (1920x1080). It mostly looks good on higher resolutions that follow a 16:9 aspect ratio (e.g. 1440p and 4k) though there are some little issues where the buildings don’t quuiiiite
fit together and need sorting out. But starts to get all jumbled up on lower resolutions or more square resolutions. Sorry :-/ I didn’t think it through for all the different resolutions. I thought doing it with relative percentages would magically work but it didn’t, and I’m old. 

**To install**:

go to directory: `/usr/share/plasma/wallpapers`

then type: `sudo git clone https://github.com/docinla/CityNight.git`

It should now be available if you right click on the Plasma desktop -> Configure Desktop -> wallpaper tab on left, and in the Wallpaper type dropdown on the right panel.

Remember! After clicking apply it will need to compile it which will take a while depending on hardware (takes 30min for me) but then caches the scene so when you reload or log-in again it should pop right up.

Cheers! And remember, if you like it, please donate to the KDE project so this animated desktop stays relevant!
