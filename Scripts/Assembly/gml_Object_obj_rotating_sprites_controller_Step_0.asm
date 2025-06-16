.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.state

:[5]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [8]

:[7]
push.v self.timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [23]

:[10]
push.v self.rotating_sprite_piece1
pushi.e -9
pushenv [12]

:[11]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[12]
popenv [11]
push.v self.rotating_sprite_piece2
pushi.e -9
pushenv [14]

:[13]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[14]
popenv [13]
push.v self.rotating_sprite_piece3
pushi.e -9
pushenv [16]

:[15]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[16]
popenv [15]
push.v self.rotating_sprite_piece4
pushi.e -9
pushenv [18]

:[17]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[18]
popenv [17]
push.v self.rotating_sprite_piece5
pushi.e -9
pushenv [20]

:[19]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[20]
popenv [19]
push.v self.rotating_sprite_piece6
pushi.e -9
pushenv [22]

:[21]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[22]
popenv [21]

:[23]
push.v self.timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v
push.v self.rotating_sprite_piece1
pushi.e -9
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.v self.rotating_sprite_piece2
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.rotating_sprite_piece3
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
push.v self.rotating_sprite_piece4
pushi.e -9
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
push.v self.rotating_sprite_piece5
pushi.e -9
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
push.v self.rotating_sprite_piece6
pushi.e -9
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]

:[end]