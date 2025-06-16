.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.rotateposition
pushi.e 0
pop.v.i self.lengthtimer
pushi.e 0
pop.v.i self.lengthstate
pushi.e 0
pop.v.b self.destroyonhit
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.impact
push.v self.y
push.v self.x
push.v 872.y
push.v 872.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 0
pop.v.i self.bufferstate
pushi.e 9
pop.v.i self.loading
pushi.e -4
pop.v.i self.parentwindow
pushi.e 2
pop.v.i self.image_index
push.v self.x
push.v 872.x
cmp.v.v LT
bf [2]

:[1]
pushi.e -1
conv.i.v
b [3]

:[2]
pushi.e 1
conv.i.v

:[3]
pop.v.v self.flip
pushi.e 0
pop.v.i self.hitstun
pushi.e 0
pop.v.i self.broken
pushi.e 0
pop.v.i self.chainlength
pushi.e 180
pop.v.i self.maxchainlength
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.i 9034033
pop.v.i self.image_blend

:[end]