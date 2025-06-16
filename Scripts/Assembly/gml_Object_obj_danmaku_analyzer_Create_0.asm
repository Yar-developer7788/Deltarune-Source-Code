.localvar 2 arguments

:[0]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.mysurface
pushi.e -100
pop.v.i self.depth
pushi.e 0
pop.v.i self.hitcount
push.i 231131
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[end]