.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [6]

:[5]
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3
pop.v.i self.con
pushi.e 64
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3079
push.v self.floppy_door
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1160
conv.i.v
pushi.e 102
conv.i.v
pushi.e 214
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.othernpc
push.i 899900
push.v self.othernpc
pushi.e -9
pop.v.i [stacktop]self.depth
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_city_susie_ralsei_fun_2_slash_Step_0_gml_25_0"@36047
conv.s.v
push.s "* They're talking about me!!!/%"@36048
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 63
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3091
push.v self.floppy_door
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.othernpc
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact

:[end]