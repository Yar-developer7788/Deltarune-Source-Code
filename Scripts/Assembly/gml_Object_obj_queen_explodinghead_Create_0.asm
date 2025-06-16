.localvar 2 arguments

:[0]
pushi.e 24
pop.v.i self.timer
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.scale
pushi.e 0
pop.v.i self.laugh
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.spawnbuffer
pushi.e 0
pop.v.i self.ultimate
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.b self.buffering
pushi.e 0
pop.v.b self.laughpause
pushi.e 0
pop.v.i self.laughsound
pushi.e 500
conv.i.v
call.i irandom(argc=1)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 14
conv.i.v
call.i irandom(argc=1)
pop.v.v self.banana
b [3]

:[2]
pushi.e 500
pop.v.i self.banana

:[3]
pushi.e 0
pop.v.i self.first
pushi.e 0
pop.v.i self.type
push.v 575.type
push.d 6.1
cmp.d.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.type

:[5]
push.v 575.init
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
pushi.e 1
pop.v.i self.first
pushi.e 3
pop.v.i 575.init

:[end]