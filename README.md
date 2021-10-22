# CityNight
KDE Live Desktop Animation of a City Skyline with QML. It is a tribute to the old After Dark screensaver Starry Night

This is a QML animation that works with KDE Plasma desktop. 

**To install**:
change to the directory: `/usr/share/plasma/wallpapers`
then type: `sudo git clone https://github.com/docinla/CityNight.git`

This will install the files and you can select it by right clicking on the desktop, selecting "Configure Desktop and Wallpaper" and select it from the "Wallpaper type" dropdown.

*NOTES*
1) If you enjoy this desktop and use it, I request that you please donate to the KDE project any amount of your choosing (https:/kde.org/community/donations/) I am in no way affiliated with KDE but I think the work they do is wonderful and this is my small, crappy way of giving back. 

2) My code is admittedly godawful. Please feel free to update it but I do request you attribute me. It's GPL3 licensed. 

3) PERFORMANCE: It seems to use between 1-3% of my CPU in a VM and a bit of GPU but shouldn't be too bad. There will be a hiccup when you first start as it loads a lot of pixels

4) Thus far it looks best on 1080p resolution (1920x1080). It mostly looks good on higher resolutions that follow a 16:9 aspect ratio (e.g. 1440p and 4k) though there are some little issues where the buildings don’t quuiiiite fit together and need sorting out. But starts to get all jumbled up on lower resolutions or more square resolutions. Sorry :-/ I didn’t think it through for all the different resolutions. I thought doing it with relative percentages would magically work but it didn’t, and I’m old. 

5) you can have a look and modify a few of the settings. For instance the "buildbase" variable has the width -30 which is pixels from the bottom. If you have a dock instead of a bar, you can set that from 30 to 0 to make it go all the way to the bottom instead. The timers are at the bottom and you can modify them if you want them faster or slower. The code is...well...somewhat documented.

Cheers! And remember, if you like it, please donate to the KDE project so this animated desktop stays relevant!
