.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.time
push.i 1000150
pop.v.i self.depth
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [2]

:[1]
push.i 1100000
pop.v.i self.depth

:[2]
pushi.e 0
pop.v.i self.angle_z
push.d 0.5
pop.v.d self.perspective_z
pushi.e 1
pop.v.i self.resolution_factor
pushi.e 6
pop.v.i self.scale
push.l 1
conv.l.v
push.l 2
conv.l.v
push.l 0
conv.l.v
call.i choose(argc=3)
pop.v.v self.colorProfile
pushi.e 1
pop.v.b self.maintain_shape
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b self.flash_white
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.max_vsp
push.d 0.2
pop.v.d self.def_grav
pushi.e 0
pop.v.i self.scalebonus

:[end]