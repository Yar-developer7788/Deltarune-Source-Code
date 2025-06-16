.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 3
pop.v.i self.hp
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.spin
pushi.e 180
call.i gml_Script_randomsign(argc=0)
pushi.e 30
conv.i.v
call.i random(argc=1)
mul.v.v
add.v.i
pop.v.v self.flydirection
pushi.e 0
pop.v.i self.timer
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.flash
push.d 0.5
pop.v.d self.friction
push.i 15245824
pop.v.i self.image_blend
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 698.target
pop.v.v self.target

:[4]
pushi.e 4
pop.v.i self.grazepoints

:[end]