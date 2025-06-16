.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.scrollSpeed
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pushi.e 45
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.state
push.v 872.x
pushi.e 100
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 70
sub.i.v
pop.v.v self.yy
pushi.e 0
pop.v.i self.trueScrollSpeed
pushi.e 1
pop.v.b self.scrollPrep
pushi.e -1
pop.v.i self.bigscrollcount
pushi.e 0
pop.v.b self.bigscroll
pushi.e 0
pop.v.i self.ystop

:[end]