/*
 *   Copyright 2018 DocInLA
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; Version 3. 
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Canvas {
    id: page
    width: 1920
    height: 1080
    
    property var stars: [] //array that holds all the star rectangles
    property var buildings: [] //array that holds all the building rectangles

    property var page_width: width;
    property var buildbase: height - 30; //to start a bit higher up to account for the taskbar pixels;
    

    /******************************************************************/
    /*                     BUILDING PROPERTIES                        */
    /******************************************************************/

    /*---------------------BUILDING 00------------------------------*/
    /*----------------------small square leftmost-------------------*/
    property var build00_win_wd: Math.ceil(width * 0.001);
    property var build00_win_ht: Math.ceil(width * 0.001);
    property var build00_win_vsp: Math.ceil(width * 0.004);
    property var build00_win_hsp: Math.ceil(width * 0.003);
    property var build00_x: Math.ceil(width * 0); //start building 0 at 0% width
    property var build00_y: Math.ceil(buildbase - build00_win_ht); 
    /*---------------------BUILDING 01------------------------------*/
    /*----------------------triangle leftmost-------------------*/
    property var build01_win_wd: Math.ceil(width * 0.001);
    property var build01_win_ht: Math.ceil(width * 0.002);
    property var build01_win_vsp: Math.ceil(width * 0.006);
    property var build01_win_hsp: Math.ceil(width * 0.002);
    property var build01_x: Math.ceil(width * 0.022);
    property var build01_y: Math.ceil(buildbase - build01_win_ht);
    /*---------------------BUILDING 02------------------------------*/
    /*------------------------triangle------------------------------*/
    property var build02_win_wd: Math.ceil(width * 0.001);
    property var build02_win_ht: Math.ceil(width * 0.001);
    property var build02_win_vsp: Math.ceil(width * 0.004);
    property var build02_win_hsp: Math.ceil(width * 0.002);
    property var build02_x: Math.ceil(width * 0.04); //start building 1 at 10% width
    property var build02_y: Math.ceil(buildbase - build02_win_ht);
    /*---------------------BUILDING 03------------------------------*/
    /*------------------------widerect------------------------------*/
    property var build03_win_wd: Math.ceil(width * 0.0008);
    property var build03_win_ht: Math.ceil(width * 0.0007);
    property var build03_win_vsp: Math.ceil(width * 0.004);
    property var build03_win_hsp: Math.ceil(width * 0.0025);    
    property var build03_x: Math.ceil(width * 0.09);
    property var build03_y: Math.ceil(buildbase - build03_win_ht);
    /*---------------------BUILDING 04------------------------------*/
    /*------------------------smallrect------------------------------*/
    property var build04_win_wd: Math.ceil(width * 0.0007);
    property var build04_win_ht: Math.ceil(width * 0.0008);
    property var build04_win_vsp: Math.ceil(width * 0.003);
    property var build04_win_hsp: Math.ceil(width * 0.0025);    
    property var build04_x: Math.ceil(width * 0.143); //start building 3 at 6% width
    property var build04_y: Math.ceil(buildbase - build04_win_ht) ;
    /*---------------------Susp Bridge------------------------------*/
    /*------------------------col0----------------------------------*/
    property var bridge00_win_wd: Math.ceil(width * 0.001);
    property var bridge00_win_ht: Math.ceil(width * 0.002);
    property var bridge00_win_vsp: Math.ceil(width * 0.004);
    property var bridge00_win_hsp: Math.ceil(width * 0.0015);
    property var bridge00_x: Math.ceil(width * 0.18);
    property var bridge00_y: Math.ceil(buildbase - bridge00_win_ht);
    /*---------------------Susp Bridge------------------------------*/
    /*------------------------col1----------------------------------*/
    property var bridge01_win_wd: Math.ceil(width * 0.0008);
    property var bridge01_win_ht: Math.ceil(width * 0.0018);
    property var bridge01_win_vsp: Math.ceil(width * 0.0035);
    property var bridge01_win_hsp: Math.ceil(width * 0.00145);
    property var bridge01_x: Math.ceil(width * 0.19);
    property var bridge01_y: Math.ceil(buildbase * 0.998 - bridge01_win_ht);
    /*---------------------Susp Bridge------------------------------*/
    /*------------------------col2----------------------------------*/
    property var bridge02_win_wd: Math.ceil(width * 0.0015);
    property var bridge02_win_ht: Math.ceil(width * 0.0025);
    property var bridge02_win_vsp: Math.ceil(width * 0.0045);
    property var bridge02_win_hsp: Math.ceil(width * 0.002);
    property var bridge02_x: Math.ceil(width * 0.3); 
    property var bridge02_y: Math.ceil(buildbase - bridge02_win_ht);
    /*---------------------Susp Bridge------------------------------*/
    /*------------------------col3----------------------------------*/
    property var bridge03_win_wd: Math.ceil(width * 0.001);
    property var bridge03_win_ht: Math.ceil(width * 0.002);
    property var bridge03_win_vsp: Math.ceil(width * 0.004);
    property var bridge03_win_hsp: Math.ceil(width * 0.0015);
    property var bridge03_x: Math.ceil(width * 0.315); 
    property var bridge03_y: Math.ceil(buildbase *  0.998 - bridge03_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*-------------------------1/4 ascending front-------------------*/
    property var bridge04_win_wd: Math.ceil(width * 0.0005);
    property var bridge04_win_ht: Math.ceil(width * 0.0005);
    property var bridge04_win_vsp: Math.ceil(width * 0.0025);
    property var bridge04_win_hsp: Math.ceil(width * 0.0025);
    property var bridge04_x: Math.ceil(width * 0.14);
    property var bridge04_y: Math.ceil(buildbase * 0.995 - bridge04_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*-------------------------1/4 ascending back--------------------*/
    property var bridge05_win_wd: Math.ceil(width * 0.0005);
    property var bridge05_win_ht: Math.ceil(width * 0.0005);
    property var bridge05_win_vsp: Math.ceil(width * 0.0025);
    property var bridge05_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge05_x: Math.ceil(width * 0.14); //start ropes at the wide rect
    property var bridge05_y: Math.ceil(buildbase * 0.995 - bridge05_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*-------------------------2/4 descending front-----------------*/
    property var bridge06_win_wd: Math.ceil(width * 0.0005);
    property var bridge06_win_ht: Math.ceil(width * 0.0005);
    property var bridge06_win_vsp: Math.ceil(width * 0.0025);
    property var bridge06_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge06_x: Math.ceil(width * 0.182); //start ropes at the wide rect
    property var bridge06_y: Math.ceil(buildbase * 0.995 - bridge06_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*---------------------3/4 ascending mid front-------------------*/
    property var bridge07_win_wd: Math.ceil(width * 0.0005);
    property var bridge07_win_ht: Math.ceil(width * 0.0005);
    property var bridge07_win_vsp: Math.ceil(width * 0.0025);
    property var bridge07_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge07_x: Math.ceil(width * 0.215); //start ropes at the wide rect
    property var bridge07_y: Math.ceil(buildbase * 0.995 - bridge07_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*---------------------4/4 descending front-------------------*/
    property var bridge08_win_wd: Math.ceil(width * 0.0005);
    property var bridge08_win_ht: Math.ceil(width * 0.0005);
    property var bridge08_win_vsp: Math.ceil(width * 0.0025);
    property var bridge08_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge08_x: Math.ceil(width * 0.305); //start ropes at the wide rect
    property var bridge08_y: Math.ceil(buildbase * 0.995 - bridge08_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*---------------------2/4 descending back----------------------*/
    property var bridge09_win_wd: Math.ceil(width * 0.0005);
    property var bridge09_win_ht: Math.ceil(width * 0.0005);
    property var bridge09_win_vsp: Math.ceil(width * 0.0025);
    property var bridge09_win_hsp: Math.ceil(width * 0.0025);
    property var bridge09_x: Math.ceil(width * 0.193); //start ropes at the wide rect
    property var bridge09_y: Math.ceil(buildbase * 0.995 - bridge09_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*---------------------3/4 ascending back----------------------*/
    property var bridge10_win_wd: Math.ceil(width * 0.0005);
    property var bridge10_win_ht: Math.ceil(width * 0.0005);
    property var bridge10_win_vsp: Math.ceil(width * 0.0025);
    property var bridge10_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge10_x: Math.ceil(width * 0.253); //start ropes at the wide rect
    property var bridge10_y: Math.ceil(buildbase * 0.995 - bridge10_win_ht);
    /*---------------------bridge ropes------------------------------*/
    /*---------------------4/4 descending back----------------------*/
    property var bridge11_win_wd: Math.ceil(width * 0.0005);
    property var bridge11_win_ht: Math.ceil(width * 0.0005);
    property var bridge11_win_vsp: Math.ceil(width * 0.0025);
    property var bridge11_win_hsp: Math.ceil(width * 0.0025);    
    property var bridge11_x: Math.ceil(width * 0.319);
    property var bridge11_y: Math.ceil(buildbase * 0.995 - bridge11_win_ht);
    /*---------------------Susp Bridge------------------------------*/
    /*------------------------mainbridge---------------------------*/
    property var bridge12_win_wd: Math.ceil(width * 0.001);
    property var bridge12_win_ht: Math.ceil(width * 0.0005);
    property var bridge12_win_vsp: Math.ceil(width * 0.0025);
    property var bridge12_win_hsp: Math.ceil(width * 0.0020);
    property var bridge12_x: Math.ceil(width * 0.153); 
    property var bridge12_y: Math.ceil(buildbase * 0.993 - bridge12_win_ht); //multiplier to "raise" the bridge above the ground level
    /*---------------------BUILDING 10------------------------------*/
    /*----------------------triangle first after bridge-------------------*/
    property var build10_win_wd: Math.ceil(width * 0.0015);
    property var build10_win_ht: Math.ceil(width * 0.002);
    property var build10_win_vsp: Math.ceil(width * 0.005);
    property var build10_win_hsp: Math.ceil(width * 0.0021);
    property var build10_x: Math.ceil(width * 0.36); //start building 1 at 10% width
    property var build10_y: Math.ceil(buildbase - build10_win_ht);
    /*---------------------BUILDING 11------------------------------*/
    /*----------------------dark rect build behind bridge tri-------*/
    property var build11_win_wd: Math.ceil(width * 0.001);
    property var build11_win_ht: Math.ceil(width * 0.001);
    property var build11_win_vsp: Math.ceil(width * 0.003);
    property var build11_win_hsp: Math.ceil(width * 0.0024);
    property var build11_x: Math.ceil(width * 0.387); //start building 1 at 10% width
    property var build11_y: Math.ceil(buildbase - build11_win_ht);
    /*---------------------BUILDING 12------------------------------*/
    /*----------------------dark tall build behind darkrect----*/
    property var build12_win_wd: Math.ceil(width * 0.00055);
    property var build12_win_ht: Math.ceil(width * 0.00055);
    property var build12_win_vsp: Math.ceil(width * 0.0045);
    property var build12_win_hsp: Math.ceil(width * 0.0022);
    property var build12_x: Math.ceil(width * 0.425); //start building 1 at 10% width
    property var build12_y: Math.ceil(buildbase - build12_win_ht);
    /*---------------------BUILDING 13------------------------------*/
    /*----------------rect w/ tall spire------------------------*/
    property var build13_win_wd: Math.ceil(width * 0.0006);
    property var build13_win_ht: Math.ceil(width * 0.0015);
    property var build13_win_vsp: Math.ceil(width * 0.006);
    property var build13_win_hsp: Math.ceil(width * 0.0025);
    property var build13_x: Math.ceil(width * 0.445); //start building 1 at 10% width
    property var build13_y: Math.ceil(buildbase- build13_win_ht);
    /*---------------------BUILDING 14------------------------------*/
    /*----------------------midlighttriangle---------------------*/
    property var build14_win_wd: Math.ceil(width * 0.00055);
    property var build14_win_ht: Math.ceil(width * 0.00055);
    property var build14_win_vsp: Math.ceil(width * 0.0045);
    property var build14_win_hsp: Math.ceil(width * 0.0022);
    property var build14_x: Math.ceil(width * 0.495); //start building 1 at 10% width
    property var build14_y: Math.ceil(buildbase - build14_win_ht);
    /*---------------------BUILDING 15------------------------------*/
    /*----------------------dark tall build behind dark tri----*/
    property var build15_win_wd: Math.ceil(width * 0.001);
    property var build15_win_ht: Math.ceil(width * 0.0015);
    property var build15_win_vsp: Math.ceil(width * 0.006);
    property var build15_win_hsp: Math.ceil(width * 0.003);
    property var build15_x: Math.ceil(width * 0.51); 
    property var build15_y: Math.ceil(buildbase - build15_win_ht);
    /*---------------------BUILDING 16------------------------------*/
    /*----------------------dark tallest build behind dark tri----*/
    property var build16_win_wd: Math.ceil(width * 0.0015);
    property var build16_win_ht: Math.ceil(width * 0.002);
    property var build16_win_vsp: Math.ceil(width * 0.008);
    property var build16_win_hsp: Math.ceil(width * 0.004);
    property var build16_x: Math.ceil(width * 0.525); //start building 1 at 10% width
    property var build16_y: Math.ceil(buildbase - build16_win_ht);
    /*---------------------BUILDING 17------------------------------*/
    /*----------------------dark rect build behind 3tris--------*/
    property var build17_win_wd: Math.ceil(width * 0.001);
    property var build17_win_ht: Math.ceil(width * 0.001);
    property var build17_win_vsp: Math.ceil(width * 0.003);
    property var build17_win_hsp: Math.ceil(width * 0.0024);
    property var build17_x: Math.ceil(width * 0.575); 
    property var build17_y: Math.ceil(buildbase - build17_win_ht);
    /*---------------------BUILDING 18------------------------------*/
    /*----------------------bright rect in front of dark rect behind 3tris--------*/
    property var build18_win_wd: Math.ceil(width * 0.0014);
    property var build18_win_ht: Math.ceil(width * 0.0023);
    property var build18_win_vsp: Math.ceil(width * 0.0042);
    property var build18_win_hsp: Math.ceil(width * 0.0025);
    property var build18_x: Math.ceil(width * 0.625); 
    property var build18_y: Math.ceil(buildbase - build18_win_ht);  
    /*---------------------BUILDING 19------------------------------*/
    /*----------------------thin window rect -------------------*/
    property var build19_win_wd: Math.ceil(width * 0.0005);
    property var build19_win_ht: Math.ceil(width * 0.002);
    property var build19_win_vsp: Math.ceil(width * 0.003);
    property var build19_win_hsp: Math.ceil(width * 0.002);
    property var build19_x: Math.ceil(width * 0.633); 
    property var build19_y: Math.ceil(buildbase - build19_win_ht);
    /*---------------------BUILDING 20------------------------------*/
    /*----------------------bigboy----------------------------------*/
    property var build20_win_wd: Math.ceil(width * 0.0015);
    property var build20_win_ht: Math.ceil(width * 0.002);
    property var build20_win_vsp: Math.ceil(width * 0.005);
    property var build20_win_hsp: Math.ceil(width * 0.0021);
    property var build20_x: Math.ceil(width * 0.65);
    property var build20_y: Math.ceil(buildbase - build20_win_ht);
    /*---------------------BUILDING 21------------------------------*/
    /*----------------------bigboy 3d right side--------------------*/
    property var build21_win_wd: Math.ceil(width * 0.0012);
    property var build21_win_ht: Math.ceil(width * 0.002);
    property var build21_win_vsp: Math.ceil(width * 0.005);
    property var build21_win_hsp: Math.ceil(width * 0.0018);    
    property var build21_x: Math.ceil(width * 0.687);
    property var build21_y: Math.ceil(buildbase - build21_win_ht);
    /*---------------------BUILDING 22------------------------------*/
    /*----------------------dark rect build behind bridge tri---*/
    property var build22_win_wd: Math.ceil(width * 0.001);
    property var build22_win_ht: Math.ceil(width * 0.001);
    property var build22_win_vsp: Math.ceil(width * 0.0025);
    property var build22_win_hsp: Math.ceil(width * 0.0020);
    property var build22_x: Math.ceil(width * 0.7); 
    property var build22_y: Math.ceil(buildbase - build22_win_ht);
    /*---------------------BUILDING 23------------------------------*/
    /*----------------------Mid right cluster tall rect---------*/
    property var build23_win_wd: Math.ceil(width * 0.001);
    property var build23_win_ht: Math.ceil(width * 0.002);
    property var build23_win_vsp: Math.ceil(width * 0.004);
    property var build23_win_hsp: Math.ceil(width * 0.002);
    property var build23_x: Math.ceil(width * 0.715); 
    property var build23_y: Math.ceil(buildbase - build23_win_ht);
    /*---------------------BUILDING 24------------------------------*/
    /*---------------------Right stout rect midright cluster-----*/
    property var build24_win_wd: Math.ceil(width * 0.001);
    property var build24_win_ht: Math.ceil(width * 0.001);
    property var build24_win_vsp: Math.ceil(width * 0.0025);
    property var build24_win_hsp: Math.ceil(width * 0.0020);
    property var build24_x: Math.ceil(width * 0.725); 
    property var build24_y: Math.ceil(buildbase - build24_win_ht);
    /*---------------------BUILDING 25------------------------------*/
    /*----------------mid right cluster triangle----------------*/
    property var build25_win_wd: Math.ceil(width * 0.0006);
    property var build25_win_ht: Math.ceil(width * 0.0015);
    property var build25_win_vsp: Math.ceil(width * 0.006);
    property var build25_win_hsp: Math.ceil(width * 0.0025);
    property var build25_x: Math.ceil(width * 0.725); //start building 1 at 10% width
    property var build25_y: Math.ceil(buildbase - build25_win_ht);
    /*---------------------BUILDING 26------------------------------*/
    /*----------------------Mid right cluster tall rect---------*/
    property var build26_win_wd: Math.ceil(width * 0.001);
    property var build26_win_ht: Math.ceil(width * 0.002);
    property var build26_win_vsp: Math.ceil(width * 0.004);
    property var build26_win_hsp: Math.ceil(width * 0.002);
    property var build26_x: Math.ceil(width * 0.78); 
    property var build26_y: Math.ceil(buildbase - build26_win_ht);
    /*---------------------BUILDING 27------------------------------*/
    /*----------------------dark rect rightmost cluster---*/
    property var build27_win_wd: Math.ceil(width * 0.001);
    property var build27_win_ht: Math.ceil(width * 0.001);
    property var build27_win_vsp: Math.ceil(width * 0.0025);
    property var build27_win_hsp: Math.ceil(width * 0.0020);
    property var build27_x: Math.ceil(width * 0.793); 
    property var build27_y: Math.ceil(buildbase - build27_win_ht);
    /*---------------------BUILDING 28------------------------------*/
    /*----------------------small Right clusters---------*/
    property var build28_win_wd: Math.ceil(width * 0.001);
    property var build28_win_ht: Math.ceil(width * 0.002);
    property var build28_win_vsp: Math.ceil(width * 0.004);
    property var build28_win_hsp: Math.ceil(width * 0.002);
    property var build28_x: Math.ceil(width * 0.809); 
    property var build28_y: Math.ceil(buildbase - build28_win_ht);
    /*---------------------BUILDING 29------------------------------*/
    /*----------------------right side--------------------*/
    property var build29_win_wd: Math.ceil(width * 0.0012);
    property var build29_win_ht: Math.ceil(width * 0.002);
    property var build29_win_vsp: Math.ceil(width * 0.005);
    property var build29_win_hsp: Math.ceil(width * 0.0018);        
    property var build29_x: Math.ceil(width * 0.812);
    property var build29_y: Math.ceil(buildbase - build29_win_ht);
    /*---------------------BUILDING 30------------------------------*/
    /*---------------------Right cluster after tri -------------------*/
    property var build30_win_wd: Math.ceil(width * 0.0005);
    property var build30_win_ht: Math.ceil(width * 0.002);
    property var build30_win_vsp: Math.ceil(width * 0.003);
    property var build30_win_hsp: Math.ceil(width * 0.002);
    property var build30_x: Math.ceil(width * 0.837); 
    property var build30_y: Math.ceil(buildbase - build30_win_ht);
    /*---------------------BUILDING 31------------------------------*/
    /*----------------------right higher triangle-------------------*/
    property var build31_win_wd: Math.ceil(width * 0.001);
    property var build31_win_ht: Math.ceil(width * 0.002);
    property var build31_win_vsp: Math.ceil(width * 0.004);
    property var build31_win_hsp: Math.ceil(width * 0.0015);
    property var build31_x: Math.ceil(width * 0.85); //start building 1 at 10% width
    property var build31_y: Math.ceil(buildbase - build31_win_ht);
    /*---------------------BUILDING 32------------------------------*/
    /*------------------------darkrect------------------------------*/
    property var build32_win_wd: Math.ceil(width * 0.0008);
    property var build32_win_ht: Math.ceil(width * 0.0007);
    property var build32_win_vsp: Math.ceil(width * 0.004);
    property var build32_win_hsp: Math.ceil(width * 0.0025);    
    property var build32_x: Math.ceil(width * 0.861);
    property var build32_y: Math.ceil(buildbase - build32_win_ht);
    /*---------------------BUILDING 33------------------------------*/
    /*----------------------dark rect build behind bridge tri---*/
    property var build33_win_wd: Math.ceil(width * 0.001);
    property var build33_win_ht: Math.ceil(width * 0.001);
    property var build33_win_vsp: Math.ceil(width * 0.0025);
    property var build33_win_hsp: Math.ceil(width * 0.0020);
    property var build33_x: Math.ceil(width * 0.881); 
    property var build33_y: Math.ceil(buildbase - build33_win_ht);
    /*---------------------BUILDING 34------------------------------*/
    /*----------------------thin window rect -------------------*/
    property var build34_win_wd: Math.ceil(width * 0.0005);
    property var build34_win_ht: Math.ceil(width * 0.002);
    property var build34_win_vsp: Math.ceil(width * 0.003);
    property var build34_win_hsp: Math.ceil(width * 0.002);
    property var build34_x: Math.ceil(width * 0.9); 
    property var build34_y: Math.ceil(buildbase - build34_win_ht);
    /*---------------------BUILDING 35------------------------------*/
    /*----------------------wedge rightmost-------------------*/
    property var build35_win_wd: Math.ceil(width * 0.001);
    property var build35_win_ht: Math.ceil(width * 0.002);
    property var build35_win_vsp: Math.ceil(width * 0.006);
    property var build35_win_hsp: Math.ceil(width * 0.002);
    property var build35_x: Math.ceil(width * 0.925); //start building 1 at 10% width
    property var build35_y: Math.ceil(buildbase - build35_win_ht);
    /*---------------------BUILDING 36------------------------------*/
    /*------------------------rightmost big rect------------------------------*/
    property var build36_win_wd: Math.ceil(width * 0.0005);
    property var build36_win_ht: Math.ceil(width * 0.0006);
    property var build36_win_vsp: Math.ceil(width * 0.003);
    property var build36_win_hsp: Math.ceil(width * 0.002);
    property var build36_x: Math.ceil(width * 0.955);
    property var build36_y: Math.ceil(buildbase - build36_win_ht);
    /*---------------------BUILDING 37------------------------------*/
    /*------------------------rightmost building--------------------*/
    property var build37_win_wd: Math.ceil(width * 0.0009);
    property var build37_win_ht: Math.ceil(width * 0.0008);
    property var build37_win_vsp: Math.ceil(width * 0.0035);
    property var build37_win_hsp: Math.ceil(width * 0.0025);
    property var build37_x: Math.ceil(width * 0.976);
    property var build37_y: Math.ceil(buildbase - build37_win_ht);

    /*---------------------Cherry on Top----------------------------*/
    /*----------------------blinking red light on building 20-------*/    
    property var light_dimention: width * 0.003;
    Rectangle{
        id: blinking_light; 
        width: light_dimention; height: light_dimention; 
        radius: light_dimention * 2; color: "#BB0000";
        x: build20_x + (build20_win_hsp * 7); y:build20_y - (build20_win_vsp * 40) - 15; 
        
        /*Fancy fade blink but crazy increase in CPU usage. How to make this better?
        /*SequentialAnimation on opacity {
            loops: Animation.Infinite
            PropertyAnimation { to: 1; duration: 2000}
            PropertyAnimation { to: 0; duration: 2000}
        }*/
    }



    onPaint: {
        var ctx = getContext("2d")
        ctx.fillStyle = "black"
        ctx.fillRect(0, 0, width, height)
    }
        
    function setup_stars() {
        var xhr_star = new XMLHttpRequest;
        xhr_star.open("GET", "./buildings/stars.txt");
        xhr_star.onreadystatechange = function() {
            if (xhr_star.readyState == XMLHttpRequest.DONE) {
                var stararray = xhr_star.responseText.split(/\r?\n/);
                console.log("setup_stars started!")
                for (var i=0; i < stararray.length; i++){           
                    stars.push(
                        Qt.createQmlObject(
                            "import QtQuick 2.0; " +
                            "Rectangle {"   +
                            "color: '"      + stararray[i].substring(0, 7) +"'; "    +
                            "width: 1;"     +
                            "height: 1;"    +
                            "x: "           + (page_width * Number.parseFloat(stararray[i].substring(8,16))) + "; " +
                            "y: "           + (buildbase * Number.parseFloat(stararray[i].substring(17,25))) + "; " +
                            "visible: false;"+
                            "}"
                        , page)
                    );                    
                }     
                console.log("setup_stars finished!")                          
            }            
        };
        xhr_star.send();
             
    }

    function setup_buildings() {

        { /* Building 00 */
            console.log("building00 has started")
            var xhr00 = new XMLHttpRequest;
            xhr00.open("GET", "./buildings/build00.txt");
            xhr00.onreadystatechange = function() {
                if (xhr00.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr00.responseText.split(/\r?\n/);                                        
                    
                    for (var i=0; i < buildarray.length; i++){

                        /*console.log("color: '" + buildarray[i].substring(0,7) +"';\t" + "x: " + (build03_x + (build03_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + ";\t" + "y: " + (build03_y - (build03_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + ";")                    
                        console.log("build00_x = " + build00_x + "\tbuild00_y = " + build00_y)*/

                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build00_win_wd + ";" +
                                "height: " + build00_win_ht + ";" +
                                "x: " + (build00_x + (build00_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build00_y - (build00_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr00.send();
        }
        
        { /* Building 01 */
            var xhr01 = new XMLHttpRequest;
            xhr01.open("GET", "./buildings/build01.txt");
            xhr01.onreadystatechange = function() {
                if (xhr01.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr01.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build01_win_wd + ";" +
                                "height: " + build01_win_ht + ";" +
                                "x: " + (build01_x + (build01_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build01_y - (build01_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr01.send();
        }

        { /* Building 02 */
            var xhr02 = new XMLHttpRequest;
            xhr02.open("GET", "./buildings/build02.txt");
            xhr02.onreadystatechange = function() {
                if (xhr02.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr02.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build02_win_wd + ";" +
                                "height: " + build02_win_ht + ";" +
                                "x: " + (build02_x + (build02_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build02_y - (build02_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr02.send();
        }

        { /* Building 03 */
            var xhr03 = new XMLHttpRequest;
            xhr03.open("GET", "./buildings/build03.txt");
            xhr03.onreadystatechange = function() {
                if (xhr03.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr03.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){                        

                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build03_win_wd + ";" +
                                "height: " + build03_win_ht + ";" +
                                "x: " + (build03_x + (build03_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build03_y - (build03_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr03.send();
        }
        
        { /* Building 04 */
            var xhr04 = new XMLHttpRequest;
            xhr04.open("GET", "./buildings/build04.txt");
            xhr04.onreadystatechange = function() {
                if (xhr04.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr04.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build04_win_wd + ";" +
                                "height: " + build04_win_ht + ";" +
                                "x: " + (build04_x + (build04_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build04_y - (build04_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr04.send();
        }

        { /* Building 10 */
            var xhr10 = new XMLHttpRequest;
            xhr10.open("GET", "./buildings/build10.txt");
            xhr10.onreadystatechange = function() {
                if (xhr10.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr10.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build10_win_wd + ";" +
                                "height: " + build10_win_ht + ";" +
                                "x: " + (build10_x + (build10_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build10_y - (build10_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr10.send();
        }

        { /* Bridge 00 */
            var xhrb00 = new XMLHttpRequest;
            xhrb00.open("GET", "./buildings/bridge00.txt");
            xhrb00.onreadystatechange = function() {
                if (xhrb00.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb00.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge00_win_wd + ";" +
                                "height: " + bridge00_win_ht + ";" +
                                "x: " + (bridge00_x + (bridge00_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge00_y - (bridge00_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb00.send();
        }

        { /* Bridge 01 */
            var xhrb01 = new XMLHttpRequest;
            xhrb01.open("GET", "./buildings/bridge01.txt");
            xhrb01.onreadystatechange = function() {
                if (xhrb01.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb01.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge01_win_wd + ";" +
                                "height: " + bridge01_win_ht + ";" +
                                "x: " + (bridge01_x + (bridge01_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge01_y - (bridge01_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb01.send();
        }

        { /* Bridge 02 */
            var xhrb02 = new XMLHttpRequest;
            xhrb02.open("GET", "./buildings/bridge02.txt");
            xhrb02.onreadystatechange = function() {
                if (xhrb02.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb02.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge02_win_wd + ";" +
                                "height: " + bridge02_win_ht + ";" +
                                "x: " + (bridge02_x + (bridge02_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge02_y - (bridge02_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb02.send();
        }

        { /* Bridge 03 */
            var xhrb03 = new XMLHttpRequest;
            xhrb03.open("GET", "./buildings/bridge03.txt");
            xhrb03.onreadystatechange = function() {
                if (xhrb03.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb03.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge03_win_wd + ";" +
                                "height: " + bridge03_win_ht + ";" +
                                "x: " + (bridge03_x + (bridge03_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge03_y - (bridge03_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb03.send();
        }

        { /* Bridge 04 */
            var xhrb04 = new XMLHttpRequest;
            xhrb04.open("GET", "./buildings/bridge04.txt");
            xhrb04.onreadystatechange = function() {
                if (xhrb04.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb04.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge04_win_wd + ";" +
                                "height: " + bridge04_win_ht + ";" +
                                "x: " + (bridge04_x + (bridge04_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge04_y - (bridge04_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb04.send();
        }

        { /* Bridge 05 */
            var xhrb05 = new XMLHttpRequest;
            xhrb05.open("GET", "./buildings/bridge05.txt");
            xhrb05.onreadystatechange = function() {
                if (xhrb05.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb05.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge05_win_wd + ";" +
                                "height: " + bridge05_win_ht + ";" +
                                "x: " + (bridge05_x + (bridge05_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge05_y - (bridge05_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb05.send();
        }

        { /* Bridge 06 */
            var xhrb06 = new XMLHttpRequest;
            xhrb06.open("GET", "./buildings/bridge06.txt");
            xhrb06.onreadystatechange = function() {
                if (xhrb06.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb06.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge06_win_wd + ";" +
                                "height: " + bridge06_win_ht + ";" +
                                "x: " + (bridge06_x + (bridge06_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge06_y - (bridge06_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb06.send();
        }

        { /* Bridge 07 */
            var xhrb07 = new XMLHttpRequest;
            xhrb07.open("GET", "./buildings/bridge07.txt");
            xhrb07.onreadystatechange = function() {
                if (xhrb07.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb07.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge07_win_wd + ";" +
                                "height: " + bridge07_win_ht + ";" +
                                "x: " + (bridge07_x + (bridge07_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge07_y - (bridge07_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb07.send();
        }

        { /* Bridge 08 */
            var xhrb08 = new XMLHttpRequest;
            xhrb08.open("GET", "./buildings/bridge08.txt");
            xhrb08.onreadystatechange = function() {
                if (xhrb08.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb08.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge08_win_wd + ";" +
                                "height: " + bridge08_win_ht + ";" +
                                "x: " + (bridge08_x + (bridge08_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge08_y - (bridge08_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb08.send();
        }

        { /* Bridge 09 */
            var xhrb09 = new XMLHttpRequest;
            xhrb09.open("GET", "./buildings/bridge09.txt");
            xhrb09.onreadystatechange = function() {
                if (xhrb09.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb09.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge09_win_wd + ";" +
                                "height: " + bridge09_win_ht + ";" +
                                "x: " + (bridge09_x + (bridge09_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge09_y - (bridge09_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb09.send();
        }

        { /* Bridge 10 */
            var xhrb10 = new XMLHttpRequest;
            xhrb10.open("GET", "./buildings/bridge10.txt");
            xhrb10.onreadystatechange = function() {
                if (xhrb10.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb10.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge10_win_wd + ";" +
                                "height: " + bridge10_win_ht + ";" +
                                "x: " + (bridge10_x + (bridge10_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge10_y - (bridge10_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb10.send();
        }

        { /* Bridge 11 */
            var xhrb11 = new XMLHttpRequest;
            xhrb11.open("GET", "./buildings/bridge11.txt");
            xhrb11.onreadystatechange = function() {
                if (xhrb11.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb11.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge11_win_wd + ";" +
                                "height: " + bridge11_win_ht + ";" +
                                "x: " + (bridge11_x + (bridge11_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge11_y - (bridge11_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb11.send();
        }

        { /* Bridge 12 */
            var xhrb12 = new XMLHttpRequest;
            xhrb12.open("GET", "./buildings/bridge12.txt");
            xhrb12.onreadystatechange = function() {
                if (xhrb12.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhrb12.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + bridge12_win_wd + ";" +
                                "height: " + bridge12_win_ht + ";" +
                                "x: " + (bridge12_x + (bridge12_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (bridge12_y - (bridge12_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhrb12.send();
        }

        { /* Building 11 */
            var xhr11 = new XMLHttpRequest;
            xhr11.open("GET", "./buildings/build11.txt");
            xhr11.onreadystatechange = function() {
                if (xhr11.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr11.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build11_win_wd + ";" +
                                "height: " + build11_win_ht + ";" +
                                "x: " + (build11_x + (build11_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build11_y - (build11_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr11.send();
        }

        { /* Building 12 */
            var xhr12 = new XMLHttpRequest;
            xhr12.open("GET", "./buildings/build12.txt");
            xhr12.onreadystatechange = function() {
                if (xhr12.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr12.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build12_win_wd + ";" +
                                "height: " + build12_win_ht + ";" +
                                "x: " + (build12_x + (build12_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build12_y - (build12_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr12.send();
        }

        { /* Building 13 */
            var xhr13 = new XMLHttpRequest;
            xhr13.open("GET", "./buildings/build13.txt");
            xhr13.onreadystatechange = function() {
                if (xhr13.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr13.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build13_win_wd + ";" +
                                "height: " + build13_win_ht + ";" +
                                "x: " + (build13_x + (build13_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build13_y - (build13_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr13.send();
        }

        { /* Building 14 */
            var xhr14 = new XMLHttpRequest;
            xhr14.open("GET", "./buildings/build14.txt");
            xhr14.onreadystatechange = function() {
                if (xhr14.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr14.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build14_win_wd + ";" +
                                "height: " + build14_win_ht + ";" +
                                "x: " + (build14_x + (build14_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build14_y - (build14_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr14.send();
        }

        { /* Building 15 */
            var xhr15 = new XMLHttpRequest;
            xhr15.open("GET", "./buildings/build15.txt");
            xhr15.onreadystatechange = function() {
                if (xhr15.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr15.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build15_win_wd + ";" +
                                "height: " + build15_win_ht + ";" +
                                "x: " + (build15_x + (build15_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build15_y - (build15_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr15.send();
        }

        { /* Building 16 */
            var xhr16 = new XMLHttpRequest;
            xhr16.open("GET", "./buildings/build16.txt");
            xhr16.onreadystatechange = function() {
                if (xhr16.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr16.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build16_win_wd + ";" +
                                "height: " + build16_win_ht + ";" +
                                "x: " + (build16_x + (build16_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build16_y - (build16_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr16.send();
        }

        { /* Building 17 */
            var xhr17 = new XMLHttpRequest;
            xhr17.open("GET", "./buildings/build17.txt");
            xhr17.onreadystatechange = function() {
                if (xhr17.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr17.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build17_win_wd + ";" +
                                "height: " + build17_win_ht + ";" +
                                "x: " + (build17_x + (build17_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build17_y - (build17_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr17.send();
        }

        { /* Building 18 */
            var xhr18 = new XMLHttpRequest;
            xhr18.open("GET", "./buildings/build18.txt");
            xhr18.onreadystatechange = function() {
                if (xhr18.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr18.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build18_win_wd + ";" +
                                "height: " + build18_win_ht + ";" +
                                "x: " + (build18_x + (build18_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build18_y - (build18_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr18.send();
        }

        { /* Building 19 */
            var xhr19 = new XMLHttpRequest;
            xhr19.open("GET", "./buildings/build19.txt");
            xhr19.onreadystatechange = function() {
                if (xhr19.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr19.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build19_win_wd + ";" +
                                "height: " + build19_win_ht + ";" +
                                "x: " + (build19_x + (build19_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build19_y - (build19_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr19.send();
        }

        { /* Building 20 */
            var xhr20 = new XMLHttpRequest;
            xhr20.open("GET", "./buildings/build20.txt");
            xhr20.onreadystatechange = function() {
                if (xhr20.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr20.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build20_win_wd + ";" +
                                "height: " + build20_win_ht + ";" +
                                "x: " + (build20_x + (build20_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build20_y - (build20_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr20.send();
        }

        { /* Building 21 */
            var xhr21 = new XMLHttpRequest;
            xhr21.open("GET", "./buildings/build21.txt");
            xhr21.onreadystatechange = function() {
                if (xhr21.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr21.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build21_win_wd + ";" +
                                "height: " + build21_win_ht + ";" +
                                "x: " + (build21_x + (build21_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build21_y - (build21_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr21.send();
        }

        { /* Building 22 */
            var xhr22 = new XMLHttpRequest;
            xhr22.open("GET", "./buildings/build22.txt");
            xhr22.onreadystatechange = function() {
                if (xhr22.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr22.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build22_win_wd + ";" +
                                "height: " + build22_win_ht + ";" +
                                "x: " + (build22_x + (build22_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build22_y - (build22_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr22.send();
        }

        { /* Building 23 */
            var xhr23 = new XMLHttpRequest;
            xhr23.open("GET", "./buildings/build23.txt");
            xhr23.onreadystatechange = function() {
                if (xhr23.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr23.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build23_win_wd + ";" +
                                "height: " + build23_win_ht + ";" +
                                "x: " + (build23_x + (build23_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build23_y - (build23_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr23.send();
        }

        { /* Building 24 */
            var xhr24 = new XMLHttpRequest;
            xhr24.open("GET", "./buildings/build24.txt");
            xhr24.onreadystatechange = function() {
                if (xhr24.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr24.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build24_win_wd + ";" +
                                "height: " + build24_win_ht + ";" +
                                "x: " + (build24_x + (build24_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build24_y - (build24_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr24.send();
        }

        { /* Building 25 */
            var xhr25 = new XMLHttpRequest;
            xhr25.open("GET", "./buildings/build25.txt");
            xhr25.onreadystatechange = function() {
                if (xhr25.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr25.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build25_win_wd + ";" +
                                "height: " + build25_win_ht + ";" +
                                "x: " + (build25_x + (build25_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build25_y - (build25_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr25.send();
        }

        { /* Building 26 */
            var xhr26 = new XMLHttpRequest;
            xhr26.open("GET", "./buildings/build26.txt");
            xhr26.onreadystatechange = function() {
                if (xhr26.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr26.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build26_win_wd + ";" +
                                "height: " + build26_win_ht + ";" +
                                "x: " + (build26_x + (build26_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build26_y - (build26_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr26.send();
        }

        { /* Building 27 */
            var xhr27 = new XMLHttpRequest;
            xhr27.open("GET", "./buildings/build27.txt");
            xhr27.onreadystatechange = function() {
                if (xhr27.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr27.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build27_win_wd + ";" +
                                "height: " + build27_win_ht + ";" +
                                "x: " + (build27_x + (build27_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build27_y - (build27_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr27.send();
        }

        { /* Building 28 */
            var xhr28 = new XMLHttpRequest;
            xhr28.open("GET", "./buildings/build28.txt");
            xhr28.onreadystatechange = function() {
                if (xhr28.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr28.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build28_win_wd + ";" +
                                "height: " + build28_win_ht + ";" +
                                "x: " + (build28_x + (build28_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build28_y - (build28_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr28.send();
        }

        { /* Building 29 */
            var xhr29 = new XMLHttpRequest;
            xhr29.open("GET", "./buildings/build29.txt");
            xhr29.onreadystatechange = function() {
                if (xhr29.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr29.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build29_win_wd + ";" +
                                "height: " + build29_win_ht + ";" +
                                "x: " + (build29_x + (build29_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build29_y - (build29_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr29.send();
        }

        { /* Building 30 */
            var xhr30 = new XMLHttpRequest;
            xhr30.open("GET", "./buildings/build30.txt");
            xhr30.onreadystatechange = function() {
                if (xhr30.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr30.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build30_win_wd + ";" +
                                "height: " + build30_win_ht + ";" +
                                "x: " + (build30_x + (build30_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build30_y - (build30_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr30.send();
        }

        { /* Building 31 */
            var xhr31 = new XMLHttpRequest;
            xhr31.open("GET", "./buildings/build31.txt");
            xhr31.onreadystatechange = function() {
                if (xhr31.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr31.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build31_win_wd + ";" +
                                "height: " + build31_win_ht + ";" +
                                "x: " + (build31_x + (build31_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build31_y - (build31_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr31.send();
        }

        { /* Building 32 */
            var xhr32 = new XMLHttpRequest;
            xhr32.open("GET", "./buildings/build32.txt");
            xhr32.onreadystatechange = function() {
                if (xhr32.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr32.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build32_win_wd + ";" +
                                "height: " + build32_win_ht + ";" +
                                "x: " + (build32_x + (build32_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build32_y - (build32_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr32.send();
        }

        { /* Building 33 */
            var xhr33 = new XMLHttpRequest;
            xhr33.open("GET", "./buildings/build33.txt");
            xhr33.onreadystatechange = function() {
                if (xhr33.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr33.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build33_win_wd + ";" +
                                "height: " + build33_win_ht + ";" +
                                "x: " + (build33_x + (build33_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build33_y - (build33_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr33.send();
        }

        { /* Building 34 */
            var xhr34 = new XMLHttpRequest;
            xhr34.open("GET", "./buildings/build34.txt");
            xhr34.onreadystatechange = function() {
                if (xhr34.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr34.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build34_win_wd + ";" +
                                "height: " + build34_win_ht + ";" +
                                "x: " + (build34_x + (build34_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build34_y - (build34_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr34.send();
        }

        { /* Building 35 */
            var xhr35 = new XMLHttpRequest;
            xhr35.open("GET", "./buildings/build35.txt");
            xhr35.onreadystatechange = function() {
                if (xhr35.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr35.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build35_win_wd + ";" +
                                "height: " + build35_win_ht + ";" +
                                "x: " + (build35_x + (build35_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build35_y - (build35_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr35.send();
        }

        { /* Building 36 */
            var xhr36 = new XMLHttpRequest;
            xhr36.open("GET", "./buildings/build36.txt");
            xhr36.onreadystatechange = function() {
                if (xhr36.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr36.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build36_win_wd + ";" +
                                "height: " + build36_win_ht + ";" +
                                "x: " + (build36_x + (build36_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build36_y - (build36_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr36.send();
        }

        { /* Building 37 */
            var xhr37 = new XMLHttpRequest;
            xhr37.open("GET", "./buildings/build37.txt");
            xhr37.onreadystatechange = function() {
                if (xhr37.readyState == XMLHttpRequest.DONE) {
                    var buildarray = xhr37.responseText.split(/\r?\n/);
                    for (var i=0; i < buildarray.length; i++){
                        buildings.push(
                            Qt.createQmlObject(
                                "import QtQuick 2.0; " +
                                "Rectangle { " +
                                "color: '" + buildarray[i].substring(0,7) +"';" +
                                "width: " + build37_win_wd + ";" +
                                "height: " + build37_win_ht + ";" +
                                "x: " + (build37_x + (build37_win_hsp * (Number.parseInt(buildarray[i].substring(8,10))))) + "; " +
                                "y: " + (build37_y - (build37_win_vsp * (Number.parseInt(buildarray[i].substring(11,13))))) + "; " +
                                "visible: false;}"
                            , page)
                        );
                    }
                }
            };
            xhr37.send();
        }



                
    }

    Component.onCompleted: {
        setup_stars();
        setup_buildings();
    }


    function hide_or_show_building(){
        var turnOff = Math.random(); //generate a random value for a percent modifier to turn something off
        var rand_i = Math.floor(Math.random() * buildings.length);
        if (!buildings[rand_i].visible){
            buildings[rand_i].visible = true;
        } else {            
            if (turnOff > 0.7){ //only turn a light off 30% of the time to encourage building
                buildings[rand_i].visible = false;
            }

        }
    }
    function hide_or_show_star(){
        var rand_i = Math.floor(Math.random() * stars.length);
        if (!stars[rand_i].visible){
            stars[rand_i].visible = true;
        } 
        else {
            stars[rand_i].visible = false;
        }
    }

    function light_on_off(){ //if the visible light is off turn it on, otherwise turn it off
        if (!blinking_light.visible){
            blinking_light.visible = true;
        } else {
            blinking_light.visible = false;
        }
    }


    Timer {
        running: true;
        repeat: true;
        interval: 100;
        onTriggered: hide_or_show_building();
    }

    Timer {
        running: true;
        repeat: true;
        interval: 100;
        onTriggered: hide_or_show_star();
    }

    Timer {
        running: true;
        repeat: true;
        interval: 2000;
        onTriggered: light_on_off();
    }
}