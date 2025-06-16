.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [5]

:[2]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.speed
pushi.e 3
cmp.i.v LT
bf [5]

:[4]
push.v self.speed
push.d 0.25
add.d.v
pop.v.v self.speed

:[5]
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [end]

:[6]
pushi.e 191
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 190
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
push.i 16777215
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.d -0.01
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.fadespeed
push.v self.playerhit
conv.v.b
bf [10]

:[9]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[10]
pushi.e 1
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[end]