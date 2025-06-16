.localvar 2 arguments

:[0]
push.i 166548
setowner.e
pushi.e 651
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sprite
pushi.e 547
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sprite
pushi.e 547
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.sprite
push.i 172945
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.sprite
call.i sprite_duplicate(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.mysprite
pushi.e -1
pushi.e 1
push.v [array]self.sprite
call.i sprite_duplicate(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.mysprite
pushi.e -1
pushi.e 2
push.v [array]self.sprite
call.i sprite_duplicate(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.mysprite
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hitbox_mode
pushi.e 6
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.s

:[end]