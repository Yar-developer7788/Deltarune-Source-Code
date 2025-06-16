.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.extflag
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.dismiss
push.i 100000
pop.v.i self.depth
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1
pop.v.i self.activecon
pushi.e 0
pop.v.i self.index2
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [end]

:[1]
pushi.e 905
pop.v.i self.x
pushi.e 75
pop.v.i self.y
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 133
conv.i.v
pushi.e 30
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.reader
pushi.e 7
push.v self.reader
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 5
push.v self.reader
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]