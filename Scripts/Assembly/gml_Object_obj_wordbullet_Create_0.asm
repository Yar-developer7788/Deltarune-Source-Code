.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 575.target
pop.v.v self.target

:[4]
pushi.e 4
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.destroyonhit
push.i 170756
setowner.e
push.s "obj_wordbullet_slash_Create_0_gml_9_0"@24563
conv.s.v
push.s "LOL"@24564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_10_0"@24565
conv.s.v
push.s "TOP10"@24566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_11_0"@24567
conv.s.v
push.s "FAMILY"@24568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_12_0"@24569
conv.s.v
push.s "GUY"@24570
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_13_0"@24571
conv.s.v
push.s "FUNNY"@24572
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_14_0"@24573
conv.s.v
push.s "MOMENTS"@24574
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_15_0"@24575
conv.s.v
push.s "GIRL"@24576
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_16_0"@24577
conv.s.v
push.s "DOLL"@24578
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 7
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_17_0"@24579
conv.s.v
push.s "BOY"@24580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 8
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_18_0"@24581
conv.s.v
push.s "QUEEN"@24582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 9
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_19_0"@24583
conv.s.v
push.s "TALE"@24584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 10
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_20_0"@24585
conv.s.v
push.s "JOKE"@24586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 11
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_21_0"@24587
conv.s.v
push.s "FASHION"@24588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 12
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_22_0"@24589
conv.s.v
push.s "MIX"@24590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 13
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_23_0"@24591
conv.s.v
push.s "SOUND"@24592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 14
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_24_0"@24593
conv.s.v
push.s "VIDEO"@24594
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 15
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_25_0"@24595
conv.s.v
push.s "TOP20"@24596
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 16
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_26_0"@24597
conv.s.v
push.s "LAUGH"@24598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 17
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_27_0"@24599
conv.s.v
push.s "AND"@24600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 18
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_28_0"@24601
conv.s.v
push.s "CRY"@24602
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 19
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_29_0"@24603
conv.s.v
push.s "LIKE"@20969
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 20
pop.v.v [array]self.word
push.s "obj_wordbullet_slash_Create_0_gml_30_0"@24604
conv.s.v
push.s "RATE"@24605
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 21
pop.v.v [array]self.word
pushi.e -1
pushi.e 21
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
conv.v.i
push.v [array]self.word
pop.v.v self.wordchoice
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.timer
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.wordchoice
call.i string_width(argc=1)
pop.v.v self.stringlength
push.v self.wordchoice
call.i string_height(argc=1)
pop.v.v self.stringheight
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [6]

:[5]
push.v self.wordchoice
call.i string_length(argc=1)
pop.v.v self.jpstringlength
push.v self.wordchoice
call.i string_width(argc=1)
pop.v.v self.jpstringwidth

:[6]
push.v self.sprite_width
push.v self.stringlength
div.v.v
pop.v.v self.idealxscale
push.v self.sprite_height
push.v self.stringheight
div.v.v
pop.v.v self.idealyscale
pushi.e 0
pop.v.i self.scaleupx
pushi.e 0
pop.v.i self.queenword
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.gray
pushi.e 0
pop.v.i self.angry
pushi.e 0
pop.v.i self.dramatimer_x
pushi.e 0
pop.v.i self.dramatimer_y
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v LT
bf [8]

:[7]
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[8]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v GT
bf [end]

:[9]
push.v 631.depth
push.d 100.5
add.d.v
pop.v.v self.depth

:[end]