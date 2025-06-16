.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.morphDone
pushi.e 0
pop.v.i self.specialDraw
pushi.e 0
pop.v.i self.glowValue
pushi.e 0
pop.v.i self.specialTimer
pushi.e 0
pop.v.i self.bgAlpha
pushi.e 0
pop.v.i self.explosiontimer
push.v self.x
pop.v.v self.kr_x_save
push.v self.y
pop.v.v self.kr_y_save
push.v self.x
pop.v.v self.su_x_save
push.v self.y
pop.v.v self.su_y_save
push.v self.x
pop.v.v self.ra_x_save
push.v self.y
pop.v.v self.ra_y_save
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.b self.pause_music
pushglb.v global.plot
pushi.e 55
cmp.i.v GTE
bf [end]

:[4]
pushi.e -1
pop.v.i self.con
pushi.e 127
conv.i.v
pushi.e 127
conv.i.v
pushi.e 458
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 129
conv.i.v
pushi.e 145
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pb_marker
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 64
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [6]

:[5]
pushi.e 105
conv.i.v
pushi.e 200
conv.i.v
pushi.e 325
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ar_npc
pushi.e 70
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2000
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.depthbonus
pushi.e 2
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 95000
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.ar_npc
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5000
add.i.v
push.v self.pb_marker
pushi.e -9
pop.v.v [stacktop]self.depth
b [9]

:[6]
push.v self.pb_marker
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]

:[9]
pushi.e 110
conv.i.v
pushi.e 110
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sw_npc
pushi.e 1253
push.v self.sw_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.sw_npc
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.sw_npc
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v

:[end]