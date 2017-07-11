scenario = "f1m2f2m1";
scenario_type = fMRI_emulation;
#scenario_type = fMRI;
scan_period = 3000;
response_matching = simple_matching;
no_logfile = false;
sequence_interrupt=false; #default
active_buttons = 1;
#button_codes=0,1;
default_font="arial";
default_font_size=30;
default_text_color=255,255,255;
default_background_color=0,0,0;

begin;

trial { picture { text { caption = " "; }; x=0; y=0; }; duration=60000; } none;

#forgiveness p1

picture { text { caption = 
"You are Player 1"; }; x=0; y=0; } player1f1;

picture { text { caption =
" Choose:

KEEP 8 dollars, SEND 2 dollars to Player 2

OR 

KEEP 1 dollar, SEND 9 dollars to Player 2
"; }; x=0; y=0; } p1DG1f1;

picture { text { caption =
"Waiting for Player 2 to acknowledge 
your decision"; }; x=0; y=0; } p1DG2f1;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fixf1;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } startfixf1;

picture { text { caption = "Now you will play a new game
for 4 rounds with the same Player 2"; }; x=0; y=0; } p1TGaf1;

picture { text { caption =
"You will begin with 10 dollars.
Whatever you send will be tripled 
in Player 2's account."; }; x=0; y=0; } p1TGf1;

picture { text { caption =
"Please wait while Player 2 makes a decision"; }; x=0; y=0; } p1TG1f1;

picture { text { caption =
"Round 2"; }; x=0; y=0; } p1TGr2f1;

picture { text { caption =
"Round 3"; }; x=0; y=0; } p1TGr3f1;

picture { text { caption =
"Round 4"; }; x=0; y=0; } p1TGr4f1;

trial { picture player1f1; duration = 3000; code = "p1 playing";} player1tf1;
trial { picture p1DG1f1; duration = 14000; code = "p1 DG";} p1DG1tf1;
trial { picture p1DG2f1; duration = 3000; code = "p1 sent";} p1DG2tf1;
trial { picture p1TGaf1; duration = 3000; code = "p1 TGa";} p1TGatf1;
trial { picture p1TGf1; duration = 14000; code = "p1 TG";} p1TGtf1;
trial { picture p1TG1f1; duration = 3000; code = "p1 wait";} p1TG1tf1;
trial { picture fixf1; duration = 5000; code = "fix";} fixingf1;
trial { picture fixf1; duration = 15000; code = "startfix";} startfixingf1;
trial { picture { text { caption = "temp"; } textingf1; x=0; y=0; }; duration = 14000; } info_trialf1;
trial { picture p1TGr2f1; duration = 3000; code = "round 2";} p1TGr2tf1;
trial { picture p1TGr3f1; duration = 3000; code = "round 3";} p1TGr3tf1;
trial { picture p1TGr4f1; duration = 3000; code = "round 4";} p1TGr4tf1;

#forgiveness p2

picture { text { caption = 
"You are Player 2"; }; x=0; y=0; } player2f2;

picture { text { caption =
"Player 1 will choose to send you
between 0 and 10 dollars"; }; x=0; y=0; } p2DG1f2;

picture { text { caption =
"You have been sent 2 dollars 
by Player 1."; }; x=0; y=0; } p2DGaf2;

#picture { text { caption =
#"You have been sent 9 dollars by player 1."; }; x=0; y=0; } p2DGbf2;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fixf2;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } startfixf2;

picture { text { caption = "Now you will play a new game
for 4 rounds with the same Player 1"; }; x=0; y=0; } p2TGaf2;

picture { text { caption =
"You and Player 1 both begin with 10 dollars.

Whatever Player 1 sends you 
will be tripled in your account."; }; x=0; y=0; } p2TGf2;

picture { text { caption =
"Please wait while 
Player 1 chooses an amount"; }; x=0; y=0; } p2TG1f2;

picture { text { caption =
"Round 2"; }; x=0; y=0; } p2TGr2f2;

picture { text { caption =
"Round 3"; }; x=0; y=0; } p2TGr3f2;

picture { text { caption =
"Round 4"; }; x=0; y=0; } p2TGr4f2;

trial { picture player2f2; duration = 3000; code = "p2 playing";} player2tf2;
trial { picture p2DG1f2; duration = 3000; code = "p2 DG";} p2DG1tf2;
trial { picture p2DGaf2; duration = 14000; code = "p1 sent 5";} p2DGatf2;
#trial { picture p2DGbf2; duration = 3000; code = "p1 sent 9";} p2DGbtf2;
trial { picture p2TGf2; duration = 3000; code = "p2 TG";} p2TGtf2;
trial { picture p2TG1f2; duration = 3000; code = "p2 wait";} p2TG1tf2;
trial { picture p2TGaf2; duration = 3000; code = "p2 New";} p2TGatf2;
trial { picture fixf2; duration = 5000; code = "fix";} fixingf2;
trial { picture fixf2; duration = 15000; code = "startfix";} startfixingf2;
trial { picture p2TGr2f2; duration = 3000; code = "round 2";} p2TGr2tf2;
trial { picture p2TGr3f2; duration = 3000; code = "round 3";} p2TGr3tf2;
trial { picture p2TGr4f2; duration = 3000; code = "round 4";} p2TGr4tf2;

#MA p1

picture { text { caption = 
"You are Player 1"; }; x=0; y=0; } player1m1;

picture { text { caption =
" Choose:

KEEP 5 dollars, SEND 5 dollars to Player 2

OR 

KEEP 1 dollar, SEND 1 dollar to Player 2 
"; }; x=0; y=0; } p1DG1m1;

picture { text { caption =
"Waiting for Player 2 
to acknowledge your decision"; }; x=0; y=0; } p1DG2m1;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fixm1;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } startfixm1;

picture { text { caption = "Now you will play a new game
for 4 rounds with the same Player 2"; }; x=0; y=0; } p1TGam1;

picture { text { caption =
"You will begin with 10 dollars.
Whatever you send will be tripled 
in Player 2's account."; }; x=0; y=0; } p1TGm1;

picture { text { caption =
"Please wait while Player 2 makes a decision"; }; x=0; y=0; } p1TG1m1;

picture { text { caption =
"Round 2"; }; x=0; y=0; } p1TGr2m1;

picture { text { caption =
"Round 3"; }; x=0; y=0; } p1TGr3m1;

picture { text { caption =
"Round 4"; }; x=0; y=0; } p1TGr4m1;

trial { picture player1m1; duration = 3000; code = "p1 playing";} player1tm1;
trial { picture p1DG1m1; duration = 14000; code = "p1 DG";} p1DG1tm1;
trial { picture p1DG2m1; duration = 3000; code = "p1 sent";} p1DG2tm1;
trial { picture p1TGam1; duration = 3000; code = "p1 TGa";} p1TGatm1;
trial { picture p1TGm1; duration = 14000; code = "p1 TG";} p1TGtm1;
trial { picture p1TG1m1; duration = 3000; code = "p1 wait";} p1TG1tm1;
trial { picture fixm1; duration = 5000; code = "fix";} fixingm1;
trial { picture fixm1; duration = 15000; code = "startfix";} startfixingm1;
trial { picture { text { caption = "temp"; } textingm1; x=0; y=0; }; duration = 14000; } info_trialm1;
trial { picture p1TGr2m1; duration = 3000; code = "round 2";} p1TGr2tm1;
trial { picture p1TGr3m1; duration = 3000; code = "round 3";} p1TGr3tm1;
trial { picture p1TGr4m1; duration = 3000; code = "round 4";} p1TGr4tm1;

#MA p2

picture { text { caption = 
"You are Player 2"; }; x=0; y=0; } player2m2;

picture { text { caption =
"Player 1 will choose to send you
between 0 and 10 dollars"; }; x=0; y=0; } p2DG1m2;

picture { text { caption =
"You have been sent 5 dollars 
by Player 1"; }; x=0; y=0; } p2DGam2;

#picture { text { caption =
#"You have been sent 9 dollars by player 1."; }; x=0; y=0; } p2DGbm2;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fixm2;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } startfixm2;

picture { text { caption = "Now you will play a new game
for 4 rounds with the same Player 1"; }; x=0; y=0; } p2TGam2;

picture { text { caption =
"You and Player 1 both begin with 10 dollars.

Whatever Player 1 sends you
will be tripled in your account."; }; x=0; y=0; } p2TGm2;

picture { text { caption =
"Please wait while 
Player 1 chooses an amount"; }; x=0; y=0; } p2TG1m2;

picture { text { caption =
"Round 2"; }; x=0; y=0; } p2TGr2m2;

picture { text { caption =
"Round 3"; }; x=0; y=0; } p2TGr3m2;

picture { text { caption =
"Round 4"; }; x=0; y=0; } p2TGr4m2;

trial { picture player2m2; duration = 3000; code = "p2 playing";} player2tm2;
trial { picture p2DG1m2; duration = 3000; code = "p2 DG";} p2DG1tm2;
trial { picture p2DGam2; duration = 14000; code = "p1 sent 2";} p2DGatm2;
#trial { picture p2DGbm2; duration = 3000; code = "p1 sent 9";} p2DGbtm2;
trial { picture p2TGm2; duration = 3000; code = "p2 TG";} p2TGtm2;
trial { picture p2TG1m2; duration = 3000; code = "p2 wait";} p2TG1tm2;
trial { picture p2TGam2; duration = 3000; code = "p2 New";} p2TGatm2;
trial { picture fixm2; duration = 5000; code = "fix";} fixingm2;
trial { picture fixm2; duration = 15000; code = "startfix";} startfixingm2;
trial { picture p2TGr2m2; duration = 3000; code = "round 2";} p2TGr2tm2;
trial { picture p2TGr3m2; duration = 3000; code = "round 3";} p2TGr3tm2;
trial { picture p2TGr4m2; duration = 3000; code = "round 4";} p2TGr4tm2;

# sending

text { caption = "With the tripled amount 
sent to you by Player 1,
you have

Choose any amount 
to send back to Player 1"; } Person;
text { caption = "_"; } selling;
picture { text Person; x=0; y=0; text selling; x=140; y=10; } Sentpe;
trial { stimulus_event { picture Sentpe; duration = 14000; } personsent;} Sentperson;

# selecting for p1 and p2

text { caption = " "; font_size = 12; } cross; 
text { caption = "SELECT
AMOUNT
FROM"; } select;
text { caption = "SEND:"; } sending;
text { caption = "KEEP:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
text { caption = "_"; } ac10;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;
box { height = 440; width = 140; color = 255,0,0;} red1;
text { caption = "Move 
mouse up to 
acknowledge";} move;

# cursors for 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40

TEMPLATE "cursors.tem" {
dol dollar k red10 rex cursor coding codes; 
10 dollar_10 10 "red10_10_" rex10 cursor10 coding10 codes10;
13 dollar_13 13 "red10_13_" rex13 cursor13 coding13 codes13;
16 dollar_16 16 "red10_16_" rex16 cursor16 coding16 codes16;
19 dollar_19 19 "red10_19_" rex19 cursor19 coding19 codes19;
22 dollar_22 22 "red10_22_" rex22 cursor22 coding22 codes22;
25 dollar_25 25 "red10_25_" rex25 cursor25 coding25 codes25;
28 dollar_28 28 "red10_28_" rex28 cursor28 coding28 codes28;
31 dollar_31 31 "red10_31_" rex31 cursor31 coding31 codes31;
34 dollar_34 34 "red10_34_" rex34 cursor34 coding34 codes34;
37 dollar_37 37 "red10_37_" rex37 cursor37 coding37 codes37;
40 dollar_40 40 "red10_40_" rex40 cursor40 coding40 codes40;
};

# DG and MA sending choices for p1

text { caption = "SELECT
AMOUNT"; } nofrom;

array { LOOP $i 10; $t = '$i+1'; box {height = '440/10-2'; width = 140; color = 0,0,0;} "dgred10_10_$t"; ENDLOOP; } dgrex10;

picture { text cross; x=0; y=0;
		LOOP $i 10; $t='$i+1'; 
		box "dgred10_10_$t"; x=0; y='-220+(440/(2*10))+$i*440/10';
		ENDLOOP;
		LOOP $i '10+1';
		box divide; x=68; y='220-$i*(440/10)';
		box divide; x=-68; y='220-$i*(440/10)';
		ENDLOOP;
		text nofrom; x = -250; y = 0;
		text dollar_10; x = -250; y = -100;
		text sending; x = 200; y = 23;
		text dollar_2; x = 300; y = 23;
		text keeping; x = 200; y = -23;
		text dollar_3; x = 300; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} dgcur;

trial { stimulus_event {picture dgcur;} dgcod;  } dgcoding;

# cursor for accepting for p2

picture { text cross; x=0; y=0;
		box red1; x=0; y=0;
		text move; x = -250; y = 0;
		text ac10; x = 250; y = 0;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} acknow;

trial { stimulus_event {picture acknow;} acknowl;  } acknowledge;

begin_pcl;

include "subs forgive p1r.pcl";
include "MA p1r.pcl";
include "cursors.pcl";
include "subs forgive p2r.pcl";
include "MA p2r.pcl";

none.present();

#forgiveness p1
#presenting the dictator game as p1
startfixingf1.present(); player1tf1.present(); p1DG1tf1.present(); DGf1(10000); p1DG2tf1.present(); fixingf1.present();
#presenting the trust game 1 as p1
p1TGatf1.present(); p1TGtf1.present(); TG1f1(10000); showingf1(); p1TG1tf1.present(); fixingf1.present();
#presenting the trust game 2 as p1
info_trialf1.present(); p1TGr2tf1.present(); TG2f1(10000); showingf1(); p1TG1tf1.present(); fixingf1.present();
#presenting the trust game 3 as p1
info_trialf1.present(); p1TGr3tf1.present(); TG3f1(10000); showingf1(); p1TG1tf1.present(); fixingf1.present();
#presenting the trust game 4 as p1
info_trialf1.present(); p1TGr4tf1.present(); TG4f1(10000); showingf1(); p1TG1tf1.present(); fixingf1.present();

#MA p2
#presenting the dictator game as p2
startfixingm2.present(); player2tm2.present(); p2DG1tm2.present(); p2DGatm2.present(); DGsentm2(10000); fixingm2.present();
#presenting the trust game 1 as p2
p2TGatm2.present(); p2TGtm2.present(); TGsent1m2(24000); fixingm2.present();
#presenting the trust game 2 as p2
p2TGr2tm2.present(); p2TG1tm2.present(); TGsent2m2(24000); fixingm2.present();
#presenting the trust game 3 as p2
p2TGr3tm2.present(); p2TG1tm2.present(); TGsent3m2(24000); fixingm2.present();
#presenting the trust game 4 as p2
p2TGr4tm2.present(); p2TG1tm2.present(); TGsent4m2(24000); fixingm2.present();

#forgiveness p2
#presenting the dictator game as p2
startfixingf2.present(); player2tf2.present(); p2DG1tf2.present(); p2DGatf2.present(); DGsentf2(10000); fixingf2.present();
#presenting the trust game 1 as p2
p2TGatf2.present(); p2TGtf2.present(); TGsent1f2(24000); fixingf2.present();
#presenting the trust game 2 as p2
p2TGr2tf2.present(); p2TG1tf2.present(); TGsent2f2(24000); fixingf2.present();
#presenting the trust game 3 as p2
p2TGr3tf2.present(); p2TG1tf2.present(); TGsent3f2(24000); fixingf2.present();
#presenting the trust game 4 as p2
p2TGr4tf2.present(); p2TG1tf2.present(); TGsent4f2(24000); fixingf2.present();

#MA p1
#presenting the dictator game as p1
startfixingm1.present(); player1tm1.present(); p1DG1tm1.present(); DGm1(10000); p1DG2tm1.present(); fixingm1.present();
#presenting the trust game 1 as p1
p1TGatm1.present(); p1TGtm1.present(); TG1m1(10000); showingm1(); p1TG1tm1.present(); fixingm1.present();
#presenting the trust game 2 as p1
info_trialm1.present(); p1TGr2tm1.present(); TG2m1(10000); showingm1(); p1TG1tm1.present(); fixingm1.present();
#presenting the trust game 3 as p1
info_trialm1.present(); p1TGr3tm1.present(); TG3m1(10000); showingm1(); p1TG1tm1.present(); fixingm1.present();
#presenting the trust game 4 as p1
info_trialm1.present(); p1TGr4tm1.present(); TG4m1(10000); showingm1(); p1TG1tm1.present(); fixingm1.present();