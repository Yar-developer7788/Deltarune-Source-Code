.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.image_speed
push.i 9897887
pop.v.i self.target
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.caster
pushi.e 0
pop.v.i self.star
pushi.e 1
pop.v.i self.battlemode
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 373.depth
pop.v.v self.depth
pushi.e 373
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
b [5]

:[4]
pushi.e 0
pop.v.i self.battlemode

:[5]
pushi.e 0
pop.v.i self.red

:[end]