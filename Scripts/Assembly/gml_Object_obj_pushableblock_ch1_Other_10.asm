.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.event
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [20]

:[4]
pushglb.v global.facing
pop.v.v self.movedir
push.v self.sprite_width
pop.v.v self.wd
push.v self.sprite_height
pop.v.v self.ht
pushi.e 0
pop.v.i self.ix
pushi.e 0
pop.v.i self.iy
pushi.e 1
pop.v.i self.confirm
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
add.v.v
pop.v.v self.iy

:[6]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.x
push.v self.wd
add.v.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[8]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.iy

:[10]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
push.v self.wd
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[12]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1338
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [14]

:[13]
pushi.e 0
pop.v.i self.confirm

:[14]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [16]

:[15]
pushi.e 0
pop.v.i self.confirm

:[16]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1503
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [18]

:[17]
pushi.e 0
pop.v.i self.confirm

:[18]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3735
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer

:[20]
push.v self.event
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.sd
pushi.e -5
pushi.e 212
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.i 231251
setowner.e
push.s "obj_pushableblock_slash_Other_10_gml_61_0"@40812
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
pushglb.v global.plot
pushi.e 50
cmp.i.v GTE
bf [25]

:[24]
push.s "obj_pushableblock_slash_Other_10_gml_66_0"@40813
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
pushi.e -5
pushi.e 212
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_pushableblock_slash_Other_10_gml_74_0"@40814
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_pushableblock_slash_Other_10_gml_75_0"@40815
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_pushableblock_slash_Other_10_gml_76_0"@40816
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_pushableblock_slash_Other_10_gml_77_0"@40817
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.sd
pushi.e 0
pop.v.i self.myinteract
pushi.e 1379
pushenv [31]

:[30]
pushi.e 50
pop.v.i self.con

:[31]
popenv [30]

:[32]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
push.v self.sd
pushi.e 1
cmp.i.v EQ
bf [end]

:[33]
push.v self.mydialoguer
pushi.e -9
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.side

:[35]
popenv [34]

:[end]