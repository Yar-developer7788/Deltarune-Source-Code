.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.colcol
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.adjust
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.y
pushi.e 260
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 80
sub.i.v
pop.v.v self.susx
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.susy
pushi.e 4167
pop.v.i self.sussprite
pushi.e 0
pop.v.i self.susindex
pushi.e 0
pop.v.i self.songplay
pushi.e 1351
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.visible

:[2]
popenv [1]
pushi.e 1465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fin
push.v self.fin
pushi.e -9
pushenv [4]

:[3]
push.d -0.01
pop.v.d self.fadespeed

:[4]
popenv [3]

:[end]