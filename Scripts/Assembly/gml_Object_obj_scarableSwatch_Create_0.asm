.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 217
conv.i.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.init
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 999
pop.v.i self.distance
pushi.e 400
pop.v.i self.distancechecker
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.verticalDirection
pushi.e 0
pop.v.i self.horizontalDirection

:[end]