.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.boss
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.read
push.v self.x
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=5)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=5)
add.v.v
pop.v.v self.y
pushi.e 18
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]