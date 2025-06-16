.localvar 2 arguments

:[0]
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.idealPositionProgress
pushi.e 0
pop.v.i self.positionProgressB
push.v self.x
pop.v.v self.idealX
push.v self.y
pop.v.v self.idealY
pushi.e 1
pop.v.b self.stickToKris
pushi.e 0
pop.v.i self.active
push.s "up"@25520
pop.v.s self.pos
push.s "down"@25524
pop.v.s self.prevpos
pushi.e 0
pop.v.i self.mycater
pushi.e 0
pop.v.i self.upcon
pushi.e 0
pop.v.i self.newdesy

:[end]