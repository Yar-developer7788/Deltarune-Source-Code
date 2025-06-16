.localvar 2 arguments

:[0]
push.v self.xspeed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v self.hsprite
pop.v.v self.sprite_index

:[2]
push.v self.yspeed
pushi.e 0
cmp.i.v NEQ
bf [end]

:[3]
push.v self.vsprite
pop.v.v self.sprite_index

:[end]