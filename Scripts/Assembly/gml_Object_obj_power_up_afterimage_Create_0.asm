.localvar 2 arguments

:[0]
push.d 0.075
conv.d.v
push.d 0.05
conv.d.v
call.i random_range(argc=2)
pop.v.v self.xrate
push.d 0.125
push.v self.xrate
sub.v.d
pop.v.v self.yrate
push.d 0.1
pop.v.d self.fade
pushi.e 0
pop.v.i self.reverse
pushi.e 1
pop.v.i self.maxalpha
pushi.e -999
pop.v.i self.pivotx
pushi.e -999
pop.v.i self.pivoty
pushi.e 1
pop.v.i self.scale
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.b self.use_pivot
pushi.e -4
pop.v.i self.follow_target
pushi.e 0
pop.v.i self.startscalex
pushi.e 0
pop.v.i self.startscaley

:[end]