.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.destroyoffscreen
pushi.e 0
pop.v.i self.tolerance
pushi.e 8
pop.v.i self.fadeInSpeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.active
pushi.e 3
pop.v.i self.target
pushi.e 20
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
pushi.e 0
pop.v.i self.targetX
pushi.e 30
pop.v.i self.framesAway
pushi.e 0
pop.v.i self.frames
pushi.e 400
pop.v.i self.endY
pushi.e 0
pop.v.b self.horizontal
pushi.e 40
pop.v.i self.traveltime
pushi.e 0
pop.v.i self.con
push.d 0.01
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.init

:[end]