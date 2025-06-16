.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.trigNum
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.con
pushi.e 5
pop.v.i self.cooldownAmount
push.v self.cooldownAmount
pop.v.v self.cooldown
pushi.e 0
pop.v.i self.flashamt
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.spear
pushi.e 30
pop.v.i self.shotSpeed
push.v self.x
pop.v.v self.startingX
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]