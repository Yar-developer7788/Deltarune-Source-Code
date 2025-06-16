.localvar 2 arguments

:[0]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.image_speed

:[end]