.localvar 2 arguments
.localvar 107 i 15755

:[0]
pushi.e 20
pop.v.i self.firstsound
pushi.e 297
pop.v.i self.lastsound
push.v self.lastsound
push.v self.firstsound
sub.v.v
pop.v.v self.soundtotal
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.soundtotal
cmp.v.v LT
bf [3]

:[2]
push.i 172956
setowner.e
pushloc.v local.i
call.i audio_get_name(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.soundName
push.i 172957
setowner.e
pushloc.v local.i
push.v self.firstsound
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.soundNo
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
pushi.e 1
pop.v.i self.current
pushi.e 0
pop.v.i self.moved
pushi.e 0
pop.v.i self.auto
pushi.e 0
pop.v.i self.playsound
pushi.e 1
pop.v.i self.pitch

:[end]