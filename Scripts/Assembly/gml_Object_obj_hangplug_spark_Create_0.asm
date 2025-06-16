.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.destroyoffscreen
pushi.e 80
pop.v.i self.tolerance
push.d 0.25
pop.v.d self.scaler
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.y
pop.v.v self.basey
pushi.e 0
pop.v.i self.flashtimer
pushi.e -1
pop.v.i self.checkx
pushi.e -1
pop.v.i self.checky
pushi.e -1
pop.v.i self.checkxa
pushi.e -1
pop.v.i self.checkxb
pushi.e 0
pop.v.i self.sparkcheckid
pushi.e 3
pop.v.i self.target
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.timer
pushi.e 18
pop.v.i self.damage
pushi.e 0
pop.v.i self.exist_timer
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.sparkid
pushi.e 160
pop.v.i self.fallAmount
pushi.e 1
pop.v.b self.bounce
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.left
pushi.e 0
pop.v.i self.right

:[end]