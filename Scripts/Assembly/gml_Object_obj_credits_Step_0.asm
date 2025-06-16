.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.s "ch2_credits.ogg"@29551
conv.s.v
call.i gml_Script_snd_init(argc=1)
pop.v.v self.song0
push.v self.song0
call.i gml_Script_mus_play(argc=1)
pop.v.v self.song1
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_21_0"@29553
conv.s.v
push.s "DELTARUNE"@132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_22_0"@29554
conv.s.v
push.s "Chapter 2"@21233
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_24_0"@29555
conv.s.v
push.s "by Toby Fox"@29556
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line

:[2]
push.v self.timer
pushi.e 100
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_credits_slash_Step_0_gml_38_0"@29557
conv.s.v
push.s "Main Artist, Animator, & Cleanup"@29558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_39_0"@29559
conv.s.v
push.s "(BG, Overworld, Battle)"@29560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_40_0"@29561
conv.s.v
push.s "(Sepia and Menu Art)"@29562
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Temmie Chang"@29563
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor

:[4]
push.v self.timer
pushi.e 200
cmp.i.v EQ
bf [6]

:[5]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_52_0"@29564
conv.s.v
push.s "Main Team"@29565
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Sarah O'Donnell"@29566
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Juju (taxiderby)"@29567
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Fred Wood"@29568
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Jean Canellas"@29569
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor

:[6]
push.v self.timer
pushi.e 300
cmp.i.v EQ
bf [8]

:[7]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_59_0"@29570
conv.s.v
push.s "Lancer, Rudinn, Hathy"@29571
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_60_0"@29572
conv.s.v
push.s "Clover, King, Jevil"@29573
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_61_0"@29574
conv.s.v
push.s "Original Character Designs"@29575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 165574
setowner.e
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Kanotynes"@29576
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line

:[8]
push.v self.timer
pushi.e 400
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_credits_slash_Step_0_gml_80_0"@29577
conv.s.v
push.s "Area Concept Art"@29578
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_81_0"@29579
conv.s.v
push.s "Dark World Costume Design"@29580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Gigi DG"@29581
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor

:[10]
push.v self.timer
pushi.e 500
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.textalpha
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_103_0"@29582
conv.s.v
push.s "Programming Help"@29583
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Shaun Spalding"@29584
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_106_0"@29585
conv.s.v
push.s "Character Design Assistance"@29586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Samanthuel Gillson (splendidland)"@29587
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor

:[12]
push.v self.timer
pushi.e 600
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_119_0_b"@29588
conv.s.v
push.s "Cutscene Assistance"@29589
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Chess"@29590
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "PixelatedCrown"@29591
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_123_0_b"@29592
conv.s.v
push.s "Shop and BG Pixel Assistance"@29593
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Shawn (puppiesandanime)"@29594
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "Kenju"@29595
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.linecolor

:[14]
push.v self.timer
pushi.e 700
cmp.i.v EQ
bf [16]

:[15]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_142_0"@29596
conv.s.v
push.s "Music Assistance"@29597
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Lena Raine"@29598
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Marcy Nabors"@29599
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_146_0"@29600
conv.s.v
push.s "Fireworks Effect"@29601
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Lars Korendijk"@29602
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor

:[16]
push.v self.timer
pushi.e 800
cmp.i.v EQ
bf [18]

:[17]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_95_0"@29603
conv.s.v
push.s "Japanese Localization"@29604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_96_0"@29605
conv.s.v
push.s "8-4 Ltd."@29606
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_98_0"@29607
conv.s.v
push.s "Translator"@29608
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_99_0"@29609
conv.s.v
push.s "Keiko Fukuichi"@29610
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor

:[18]
push.v self.timer
pushi.e 900
cmp.i.v EQ
bf [20]

:[19]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_177_0"@29611
conv.s.v
push.s "Testers"@29612
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Tester A"@29613
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Tester B"@29614
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor

:[20]
push.v self.timer
pushi.e 1000
cmp.i.v EQ
bf [22]

:[21]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_192_0_b"@29615
conv.s.v
push.s "Website"@29616
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Ryan"@29617
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Brian"@29618
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor

:[22]
push.v self.timer
pushi.e 1100
cmp.i.v EQ
bf [24]

:[23]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_152_0"@29619
conv.s.v
push.s "Special Thanks"@29620
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_153_0"@29621
conv.s.v
push.s "Fangamer"@29622
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_155_0"@29623
conv.s.v
push.s "\"Temmie\" Character Design"@29624
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_156_0"@29625
conv.s.v
push.s "Betty Kwong"@29626
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor

:[24]
push.v self.timer
pushi.e 1150
cmp.i.v GTE
bf [26]

:[25]
push.v self.timer
pushi.e 1200
cmp.i.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.creditalpha
push.d 0.02
sub.d.v
pop.v.v self.creditalpha
push.v self.textalpha
push.d 0.02
sub.d.v
pop.v.v self.textalpha

:[29]
push.v self.timer
pushi.e 1400
cmp.i.v GTE
bf [41]

:[30]
push.v self.timer
pushi.e 1560
cmp.i.v LTE
bf [32]

:[31]
push.v self.creditalpha
pushi.e 1
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.creditalpha
push.d 0.01
add.d.v
pop.v.v self.creditalpha

:[35]
push.v self.timer
pushi.e 1560
cmp.i.v GTE
bf [37]

:[36]
push.v self.creditalpha
pushi.e 0
cmp.i.v GT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.v self.creditalpha
push.d 0.01
sub.d.v
pop.v.v self.creditalpha

:[40]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_191_0"@29627
conv.s.v
push.s "To be continued"@29628
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_192_0"@29629
conv.s.v
push.s "in Chapter 3"@29630
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 165574
setowner.e
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.v self.textalpha
push.d 0.01
sub.d.v
pop.v.v self.textalpha

:[41]
push.v self.timer
pushi.e 1860
cmp.i.v EQ
bf [43]

:[42]
push.v self.song0
call.i gml_Script_snd_free(argc=1)
popz.v

:[43]
push.v self.timer
pushi.e 1880
cmp.i.v EQ
bf [end]

:[44]
pushi.e -1
pop.v.i global.chapter_return
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[end]