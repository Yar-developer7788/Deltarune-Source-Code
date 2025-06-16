.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.shadow
pushi.e 0
pop.v.i self.tower
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.jumping
pushi.e 0
pop.v.i self.jumpy
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.jumpstyle
pushi.e 0
pop.v.i self.failureCount
pushi.e 5
pop.v.i self.failureGoal
pushi.e 0
pop.v.i self.failplus
pushi.e 0
pop.v.i self.selfFigureTimer
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.jostlecon
pushi.e 0
pop.v.i self.jostletimer
push.v self.x
pushi.e 160
add.i.v
pop.v.v self.targetx
pushi.e -1
pop.v.i self.depth
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.hastarget
pushi.e 0
pop.v.i self.jumppuzzle
pushi.e 0
pop.v.i self.fallen
pushi.e 280
pop.v.i self.idealx
pushi.e 260
pop.v.i self.idealy
pushi.e 60
pop.v.i self.entranceLeft
pushi.e 1
pop.v.b self.waiting
pushi.e 0
pop.v.i self.winY
pushi.e 0
pop.v.i self.scoreplusinit
pushi.e 0
pop.v.i self.bonus
pushi.e 0
pop.v.i self.autocomplete
pushi.e 0
pop.v.i self.graceperiod
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1162
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 1
pop.v.i 1162.noelleScared

:[end]