.localvar 2 arguments

:[0]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i self.awoke
push.v self.sleepcounter
pushi.e 1
add.i.v
pop.v.v self.sleepcounter
push.v self.sleepcounter
pushi.e 3
cmp.i.v GTE
bf [6]

:[5]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
pop.v.i self.sleeping
pushi.e 3981
pop.v.i self.idlesprite
push.i 231984
setowner.e
push.s "obj_susieenemy_slash_Other_11_gml_9_0"@41347
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
pushi.e 99
pop.v.i self.sleepcounter
pushi.e 1
pop.v.i self.awoke

:[9]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v

:[11]
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[13]
pushi.e 53
pop.v.i global.typer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.i 231251
setowner.e
push.s "obj_susieenemy_slash_Other_11_gml_19_0"@41348
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_susieenemy_slash_Other_11_gml_20_0"@41349
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_susieenemy_slash_Other_11_gml_21_0"@41350
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_susieenemy_slash_Other_11_gml_22_0"@41351
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[21]
push.v self.lancer_hurt
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
pushi.e -5
pushi.e 1
push.v [array]self.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 1
pop.v.i self.lancer_hurt
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [27]

:[26]
push.s "obj_susieenemy_slash_Other_11_gml_28_0"@41352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [28]

:[27]
push.s "obj_susieenemy_slash_Other_11_gml_31_0"@41353
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [39]

:[29]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_susieenemy_slash_Other_11_gml_35_0"@41354
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[31]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_susieenemy_slash_Other_11_gml_36_0"@41355
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[33]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_susieenemy_slash_Other_11_gml_37_0"@41356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[35]
push.v self.anythingcounter
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_susieenemy_slash_Other_11_gml_38_0"@41357
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[37]
push.v self.anythingcounter
pushi.e 5
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_susieenemy_slash_Other_11_gml_39_0"@41358
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[39]
push.v self.lancer_act
pushi.e 3
cmp.i.v EQ
bf [48]

:[40]
push.v self.anythingxcounter
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_susieenemy_slash_Other_11_gml_43_0"@41359
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[42]
push.v self.anythingxcounter
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_susieenemy_slash_Other_11_gml_44_0"@41360
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[44]
push.v self.anythingxcounter
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_susieenemy_slash_Other_11_gml_45_0"@41361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[46]
push.v self.anythingxcounter
pushi.e 4
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_susieenemy_slash_Other_11_gml_46_0"@41362
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[48]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_susieenemy_slash_Other_11_gml_48_0"@41363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[50]
push.v self.awoke
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_susieenemy_slash_Other_11_gml_49_0"@41364
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[52]
pushi.e 0
pop.v.i self.awoke
pushi.e 0
pop.v.i self.lancer_act
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[end]