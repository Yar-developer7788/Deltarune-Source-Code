.localvar 2 arguments

:[0]
pushi.e 117
pop.v.i self.bpm
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.bps
pushi.e 1
conv.i.d
push.v self.bps
div.v.d
pop.v.v self.spb
push.v self.bps
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v self.bpf
pushi.e 0
pop.v.i self.beat
push.v self.autoStart
pop.v.v self.active
pushi.e 0
pop.v.b self.specialsSetup
pushi.e 0
pop.v.i self.playsound
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]