.localvar 2 arguments

:[0]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.left
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.right
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.top
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.bottom
push.v self.left
pop.v.v self.maxleft
push.v self.right
pop.v.v self.maxright
push.v self.top
pop.v.v self.maxtop
push.v self.bottom
pop.v.v self.maxbottom
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.sizeup
pushi.e 0
pop.v.i self.playercrush
pushi.e 0
pop.v.i self.target
pushi.e 30
pop.v.i self.damage
pushi.e 0
pop.v.i self.destroytimer

:[end]