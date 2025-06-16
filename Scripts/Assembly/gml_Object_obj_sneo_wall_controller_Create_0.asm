.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 4
pop.v.i self.wallsize
pushi.e 0
pop.v.i self.sinespeed
push.d 1.2
pop.v.d self.sinetargetspeed
pushi.e 5
pop.v.i self.spawncount
push.i 68097
setowner.e
pushi.e 172
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.made
push.d 125.66370614359172
push.v self.spawncount
div.v.d
pop.v.v self.waittime
push.v self.waittime
pop.v.v self.timer
pushi.e 3
pop.v.i self.type
push.v global.turntimer
pushi.e 33
add.i.v
pop.v.v global.turntimer
pushi.e 0
pop.v.i self.brake
pushi.e 0
pop.v.i self.init
pushi.e 1
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.breakspotconsecutive
pushi.e 0
pop.v.i self.breakspotpreviouscon
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.turnaroundcon
push.v 697.difficulty
pop.v.v self.difficulty
pushi.e -91
pop.v.i self.lilguytimer

:[end]