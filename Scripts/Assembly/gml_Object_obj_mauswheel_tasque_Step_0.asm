.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.timer
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[3]
pushi.e 1
conv.i.v
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 229
add.i.v
push.v self.ystart
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.y
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_cameray(argc=0)
pushi.e 229
add.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
push.v self.timer
pushi.e 10
cmp.i.v LT
bf [8]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[8]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.d -2.3
pop.v.d self.image_xscale
push.d 1.7
pop.v.d self.image_yscale

:[10]
push.d 0.5
conv.d.v
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e -2
conv.i.v
push.d -2.3
conv.d.v
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_xscale
push.d 0.5
conv.d.v
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 1.7
conv.d.v
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_yscale

:[11]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 80
add.i.v
cmp.v.v GT
bt [13]

:[12]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [14]

:[13]
push.e 1

:[14]
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]