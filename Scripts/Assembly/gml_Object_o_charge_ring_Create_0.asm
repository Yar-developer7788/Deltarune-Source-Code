.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.radA
pushi.e 150
pop.v.i self.radStart
pushi.e 0
pop.v.i self.radEnd
push.v self.radStart
pop.v.v self.radCurrent
push.v self.radCurrent
pop.v.v self.radLast
pushi.e 0
pop.v.i self.lineA
pushi.e 10
pop.v.i self.width
pushi.e 0
pop.v.i self.widthC
pushi.e 24
pop.v.i self.quality
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
call.i make_colour_rgb(argc=3)
pop.v.v self.color
push.d 0.7
conv.d.v
push.d 0.3
conv.d.v
call.i random_range(argc=2)
pop.v.v self.alpha
pushi.e 0
pop.v.i self.alphaprev
push.v 789.depth
pushi.e 4
sub.i.v
pop.v.v self.depth

:[end]