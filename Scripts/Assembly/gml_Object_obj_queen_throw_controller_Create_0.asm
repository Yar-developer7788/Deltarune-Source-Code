.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.variant
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.siner
push.v 574.phase
push.v 574.wirescut
sub.v.v
pop.v.v self.difficulty
pushi.e 0
pop.v.i self.bardlymercy
pushi.e 0
pop.v.i self.lerpintimer
push.v self.y
pop.v.v self.ysave
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y
push.v 574.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [end]

:[2]
push.i 166973
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x1
push.i 166975
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2
push.i 166974
setowner.e
push.v self.y
pushi.e 30
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y1
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x_offset
push.i 170989
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.visiblevine
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]