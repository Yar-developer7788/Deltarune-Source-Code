.localvar 2 arguments

:[0]
push.v 574.depth
pushi.e 100
sub.i.v
pop.v.v self.depth
push.i 32768
pop.v.i self.image_blend
push.d 0.9
pop.v.d self.image_alpha
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_speed
push.v self.x
pushi.e 34
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 140
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.appeartimer
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.createeffect
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.shieldsiner
pushi.e 0
pop.v.i self.shieldstate
pushi.e 0
pop.v.i self.shieldtimer
pushi.e 0
pop.v.i self.appearcon
pushi.e 510
pop.v.i self.queenhandx
pushi.e 115
pop.v.i self.queenhandy
push.v self.x
pop.v.v self.idealx
pushi.e 0
pop.v.i self.shieldhurt
pushi.e 0
pop.v.i self.shieldhurttimer
pushi.e 0
pop.v.i self.shieldx
pushi.e 0
pop.v.i self.shieldy
pushi.e 1
pop.v.i self.shieldalpha
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.shieldheight
pushi.e 0
pop.v.i self.shieldhpgradual
pushi.e 0
pop.v.i self.imabouttobreak
push.d 0.4
pop.v.d self.imabouttobreak_alpha
pushi.e 0
pop.v.i self.imabouttobreak_siner
pushi.e 0
pop.v.i self.shaketimer

:[end]