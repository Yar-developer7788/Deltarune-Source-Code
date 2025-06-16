.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v 82.x
push.v self.triggerPoint
cmp.v.v GTE
bf [3]

:[2]
push.v self.spawned
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 795
conv.i.v
pushi.e 80
conv.i.v
pushi.e 310
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ralsei
pushi.e 824
conv.i.v
pushi.e 80
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.susie
pushi.e 67
pop.v.i global.plot
pushi.e 1
pop.v.i self.spawned

:[6]
push.v self.ralsei
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[7]
push.v self.ralsei
pushi.e -9
pushenv [10]

:[8]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
push.v 1269.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.d 0.25
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed
push.v self.x
pushi.e 640
cmp.i.v GT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [8]

:[11]
push.v self.susie
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[12]
push.v self.susie
pushi.e -9
pushenv [15]

:[13]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
push.v 1269.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.d 0.25
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed
push.v self.x
pushi.e 640
cmp.i.v GT
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [13]

:[end]