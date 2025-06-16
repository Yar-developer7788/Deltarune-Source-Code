.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 5
pop.v.i self.grazepoints
pushi.e 5
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.active
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
add.i.v
pop.v.v self.y

:[2]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 460
add.i.v
cmp.v.v GT
bf [4]

:[3]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 460
add.i.v
pop.v.v self.y

:[4]
pushi.e 1
pop.v.i self.dont
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.times
pushi.e 0
pop.v.i self.activetimer
pushi.e 0
pop.v.i self.image_alpha
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i self.type

:[end]