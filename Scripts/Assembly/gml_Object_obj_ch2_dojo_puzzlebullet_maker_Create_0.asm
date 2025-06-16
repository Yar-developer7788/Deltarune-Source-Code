.localvar 2 arguments

:[0]
pushi.e 3240
pop.v.i self.sprite_index
push.v self.sprite_index
call.i sprite_get_number(argc=1)
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.target
pushi.e 120
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
push.s "none"@562
pop.v.s self.element
pushi.e 5
pop.v.i self.grazepoints
pushi.e 5
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.activetimer
pushi.e 5
pop.v.i self.times
pushi.e 0
pop.v.i self.timesfired
pushi.e 0
pop.v.i self.timetarg
pushi.e 5
pop.v.i self.bulletspeed
pushi.e 0
pop.v.i self.image_alpha
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.futuredir
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]