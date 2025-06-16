.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
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
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 100
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_credits_2_slash_Step_0_gml_27_0"@37001
conv.s.v
push.s "-Main Artist-"@37002
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_28_0"@37003
conv.s.v
push.s "-Main Animator-"@37004
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Temmie Chang"@29563
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.v self.menugray
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor

:[4]
push.v self.timer
pushi.e 201
cmp.i.v EQ
bf [6]

:[5]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_42_0"@37005
conv.s.v
push.s "-Main Team-"@37006
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
push.s "Taxiderby"@37007
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
push.s "Xan Wetherall"@37008
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[6]
push.v self.timer
pushi.e 302
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_68_0"@37009
conv.s.v
push.s "-BG Concept Art-"@37010
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_69_0"@37011
conv.s.v
push.s "(Cyber Field, City, Mansion)"@37012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Gigi DG"@29581
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
push.s "obj_credits_2_slash_Step_0_gml_72_0"@37013
conv.s.v
push.s "-Dark World Costume Design-"@37014
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_73_0"@37015
conv.s.v
push.s "Gigi DG [Kris, Susie]"@37016
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_74_0"@37017
conv.s.v
push.s "Tcheska Lynn B (chess) [Berdly]"@37018
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[8]
push.v self.timer
pushi.e 403
cmp.i.v EQ
bf [10]

:[9]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_88_0"@37019
conv.s.v
push.s "-Guest Character Design-"@37020
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_89_0"@37021
conv.s.v
push.s "(Lancer, Rudinn, Hathy)"@37022
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_90_0"@37023
conv.s.v
push.s "(Clover, King, Jevil)"@37024
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Kanotynes"@29576
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_92_0"@37025
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_93_0"@37026
conv.s.v
push.s "-Singing This Song-"@37027
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "Laura Shigihara"@37028
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_95_0"@37029
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[10]
push.v self.timer
pushi.e 503
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.textalpha
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_109_0"@37030
conv.s.v
push.s "-Guest Character Design-"@37020
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_110_0"@37031
conv.s.v
push.s "(Poppup, Ambyu-Lance, Hacker, etc.)"@37032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Samanthuel Gillson (splendidland)"@29587
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_112_0"@37033
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_113_0"@37034
conv.s.v
push.s "-Guest Character Design-"@37020
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_114_0"@37035
conv.s.v
push.s "(Sweet, Cap'n, K_K)"@37036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_115_0"@37037
conv.s.v
push.s "(Tasque Manager)"@37038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "NELNAL"@37039
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[12]
push.v self.timer
pushi.e 604
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_131_0"@37040
conv.s.v
push.s "-Pixel Art Assistance-"@37041
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Shawn (puppiesandanime)"@29594
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Kenju"@29595
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Tcheska Lynn B (chess)"@37042
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Satoshi Maruyama"@37043
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
push.s "obj_credits_2_slash_Step_0_gml_137_0"@37044
conv.s.v
push.s "-Development Tools (Cool)-"@37045
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "Juju Adams"@37046
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor
push.v self.menugray
pushi.e -1
pushi.e 6
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[14]
push.v self.timer
pushi.e 705
cmp.i.v EQ
bf [16]

:[15]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_151_0"@37047
conv.s.v
push.s "-Programming Assistance-"@37048
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
push.s "Lars Korendijk"@29602
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
push.s "obj_credits_2_slash_Step_0_gml_155_0"@37049
conv.s.v
push.s "-Cutscene Assistance-"@37050
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_156_0"@37051
conv.s.v
push.s "Tcheska Lynn B (chess)"@37042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_157_0"@37052
conv.s.v
push.s "Chelsea Saunders (pixelatedcrown)"@37053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[16]
push.v self.timer
pushi.e 805
cmp.i.v EQ
bf [21]

:[17]
pushi.e 1
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_171_0"@37054
conv.s.v
push.s "-Music Assistance-"@37055
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
push.s "obj_credits_2_slash_Step_0_gml_175_0"@37056
conv.s.v
push.s "-UT Character Design-"@37057
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_176_0"@37058
conv.s.v
push.s "Betty Kwong (Temmie)"@37059
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [19]

:[18]
push.s "Magnolia Porter (Snowdrake, Monster Kid)"@37060
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
b [20]

:[19]
push.s "Magnolia Porter"@37061
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_177_0"@37062
conv.s.v
push.s "(オワライチョウ／モンスターの子)"@37063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line

:[20]
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[21]
push.v self.timer
pushi.e 906
cmp.i.v EQ
bf [23]

:[22]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_191_0"@37064
conv.s.v
push.s "-Japanese Localization-"@37065
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_192_0"@37066
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
push.s "obj_credits_2_slash_Step_0_gml_194_0"@37067
conv.s.v
push.s "-Translator-"@37068
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Keiko Fukuichi"@29610
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[23]
push.v self.timer
pushi.e 1007
cmp.i.v EQ
bf [25]

:[24]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_211_0"@37069
conv.s.v
push.s "-Localization Producers-"@37070
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Graeme Howard"@37071
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "John Ricciardi"@37072
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
push.s "obj_credits_2_slash_Step_0_gml_215_0"@37073
conv.s.v
push.s "-Localization Support-"@37074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Tina Carter"@37075
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "Yutaka Ohbuchi"@37076
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "Sami Ragone"@37077
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[25]
push.v self.timer
pushi.e 1108
cmp.i.v EQ
bf [27]

:[26]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_231_0"@37078
conv.s.v
push.s "-Platform Programming-"@37079
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_234_0"@37080
conv.s.v
push.s "-Programming Support-"@37081
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Gregg Tavares"@37082
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
push.s "obj_credits_2_slash_Step_0_gml_236_0"@37083
conv.s.v
push.s "-Japanese Graphics-"@37084
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "256graph"@37085
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor
push.v self.menugray
pushi.e -1
pushi.e 6
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[27]
push.v self.timer
pushi.e 1208
cmp.i.v EQ
bf [29]

:[28]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_251_0"@37086
conv.s.v
push.s "-QA-"@37087
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_252_0"@37088
conv.s.v
push.s "DIGITAL HEARTS Co., Ltd."@37089
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_253_0"@37090
conv.s.v
push.s "Tomohiro Nakai [QA Project Manager]"@37091
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_254_0"@37092
conv.s.v
push.s "Tomoyoshi Yamashita [QA Lead]"@37093
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_255_0"@37094
conv.s.v
push.s "Ryohei Kishimoto [QA Assistant Lead]"@37095
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_256_0"@37096
conv.s.v
push.s "Shinji Yasue [Sales Dept]"@37097
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[29]
push.v self.timer
pushi.e 1309
cmp.i.v EQ
bf [31]

:[30]
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_271_0"@37098
conv.s.v
push.s "-Super Testers-"@37099
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "AlexMdle"@37100
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "PureQuestion"@37101
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
push.s "obj_credits_2_slash_Step_0_gml_275_0"@37102
conv.s.v
push.s "-Website-"@37103
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Brian Coia"@37104
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[31]
push.v self.timer
pushi.e 1410
cmp.i.v EQ
bf [33]

:[32]
push.i 165574
setowner.e
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s " "@353
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
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor
pushi.e 1
pop.v.b self.drawtesters

:[33]
push.v self.timer
pushi.e 1511
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.b self.drawtesters
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_314_0"@37105
conv.s.v
push.s "-Special Thanks-"@37106
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Hiroko Minamoto"@37107
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Fontworks Inc."@37108
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Yutaka Sato (Happy Ruika)"@37109
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_318_0"@37110
conv.s.v
push.s "All 8-4 & Fangamer Staff"@37111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Claire & Andrew"@37112
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "Brian Lee"@37113
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "YoYo Games"@37114
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.line
push.i 169005
setowner.e
push.v self.menugray
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
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.linecolor

:[35]
push.v self.timer
pushi.e 1611
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "obj_credits_2_slash_Step_0_gml_339_0"@37115
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_340_0"@37116
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_341_0"@37117
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_191_0"@29627
conv.s.v
push.s "To be continued"@29628
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_192_0"@29629
conv.s.v
push.s "in Chapter 3"@29630
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_344_0"@37118
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_345_0"@37119
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.line
push.s "obj_credits_2_slash_Step_0_gml_346_0"@37120
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 7
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
push.v self.textalpha
push.d 0.01
sub.d.v
pop.v.v self.textalpha

:[37]
push.v self.timer
pushi.e 1641
cmp.i.v GT
bf [39]

:[38]
push.v self.timer
pushi.e 1711
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [43]

:[41]
push.v self.creditalpha
pushi.e 1
cmp.i.v NEQ
bf [43]

:[42]
push.v self.creditalpha
push.d 0.02
add.d.v
pop.v.v self.creditalpha

:[43]
push.v self.timer
pushi.e 1801
cmp.i.v GTE
bf [46]

:[44]
push.v self.creditalpha
push.d 0.05
sub.d.v
pop.v.v self.creditalpha
push.v self.creditalpha
push.d -0.1
cmp.d.v LT
bf [46]

:[45]
pushi.e -1
pop.v.i global.chapter_return
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[46]
push.v self.timer
pushi.e 1744
cmp.i.v GT
bf [48]

:[47]
push.v self.timer
pushi.e 1910
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.v self.creditalpha
push.d 0.02
add.d.v
pop.v.v self.creditalpha

:[51]
push.v self.timer
pushi.e 1910
cmp.i.v GT
bf [end]

:[52]
push.v self.creditalpha
push.d 0.02
sub.d.v
pop.v.v self.creditalpha
push.v self.creditalpha
push.d -0.5
cmp.d.v LTE
bf [end]

:[53]
pushi.e -1
pop.v.i global.chapter_return
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[end]