.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 270
pop.v.i self.direction
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.breakcount
pushi.e 0
pop.v.i self.win
pushi.e 0
pop.v.i self.deathtimer
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.hastarget
pushi.e 0
pop.v.i self.jumppuzzle
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i self.jumppuzzle
pushi.e 1
pop.v.i self.hastarget
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pop.v.v self.target

:[end]