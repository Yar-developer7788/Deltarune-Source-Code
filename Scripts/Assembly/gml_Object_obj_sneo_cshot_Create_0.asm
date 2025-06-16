.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
call.i gml_Script_randomsign(argc=0)
pushi.e 10
mul.i.v
pop.v.v self.angle_speed
push.v self.angle_speed
pop.v.v self.target_speed
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.init
pushi.e 360
conv.i.v
call.i irandom(argc=1)
pop.v.v self.opening
pushi.e 90
pop.v.i self.openingsize
pushi.e 135
pop.v.i self.openingoffset
pushi.e -1
pop.v.i self.destroyable
pushi.e 180
pop.v.i self.direction
pushi.e 3
pop.v.i self.speed
pushi.e 672
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.weakpoint
call.i @@This@@(argc=0)
push.v self.weakpoint
pushi.e -9
pop.v.v [stacktop]self.barrier
push.v self.depth
pushi.e 1
sub.i.v
push.v self.weakpoint
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.hitfreeze
pushi.e 0
pop.v.b self.hit
pushi.e 0
pop.v.i self.movementstyle

:[end]