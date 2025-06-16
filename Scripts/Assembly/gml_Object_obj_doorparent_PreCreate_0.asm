.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushbltn.v builtin.room
call.i room_next(argc=1)
pop.v.v self.doorRoom
pushi.e -1
pop.v.i self.doorEntrance
pushi.e -1
pop.v.i self.doorFadeMusic
pushi.e 14
pop.v.i self.doorFadeMusicTime
pushi.e -1
pop.v.i self.doorFacing
pushi.e -1
pop.v.i self.doorPreset
pushi.e -1
pop.v.i self.doorSound
pushi.e -1
pop.v.i self.doorSound2
pushi.e -1
pop.v.i self.doorDelay
pushi.e -1
pop.v.i self.doorPostDelay

:[end]