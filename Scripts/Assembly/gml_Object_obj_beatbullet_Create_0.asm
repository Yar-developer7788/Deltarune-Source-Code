.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.destroyoffscreen
pushi.e 0
pop.v.i self.tolerance
pushi.e 15
pop.v.i self.fadeInSpeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.active
pushi.e 3
pop.v.i self.target
pushi.e 10
pop.v.i self.damage
pushi.e 0
pop.v.i self.beats
pushi.e 0
pop.v.i self.beatsPrev
call.i gml_Script_cameray(argc=0)
pushi.e 150
add.i.v
pop.v.v self.lanesEndY
pushi.e -4
pop.v.i self.follow
pushi.e 1
pop.v.i self.playSound

:[end]