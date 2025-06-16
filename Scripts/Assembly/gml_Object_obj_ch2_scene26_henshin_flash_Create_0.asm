.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.orb_size
pushi.e 0
pop.v.i self.orb_sin
pushi.e 0
pop.v.i self.siner
push.i 167692
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beam_dir
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.beam_dir
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.beam_dir
pushi.e 300
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.beam_dir
push.i 167693
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beam_rot
push.d 0.55
conv.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.beam_rot
push.d -0.8
conv.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.beam_rot
push.d -0.6
conv.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.beam_rot
pushi.e 20
pop.v.i self.beam_speed
pushi.e 0
pop.v.i self.beam_size
pushi.e 0
pop.v.i self.beam_timer

:[end]