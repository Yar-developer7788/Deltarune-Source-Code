.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.noellejoin
pushi.e 0
pop.v.i self.leavecon
pushi.e 0
pop.v.i self.leaveleftattempt
pushi.e 0
pop.v.i self.leaverightattempt
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.plot
pushi.e 70
cmp.i.v LT
bf [8]

:[3]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[5]
pushi.e 2533
conv.i.v
pushi.e 40
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.alleyoverlay
pushi.e 30
push.v self.alleyoverlay
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 50
push.v self.alleyoverlay
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.alleyoverlay
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.d 0.5
push.v self.alleyoverlay
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.v self.alleyoverlay
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 724
conv.i.v
pushi.e 205
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.noellemarker
b [end]

:[8]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 105
conv.i.v
pushi.e 158
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hackernpc
pushi.e 1230
push.v self.hackernpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[10]
pushi.e 127
conv.i.v
pushi.e 185
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]