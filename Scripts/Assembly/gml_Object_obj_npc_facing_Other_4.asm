.localvar 2 arguments

:[0]
push.v self.sprite_height_adjusted
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[end]