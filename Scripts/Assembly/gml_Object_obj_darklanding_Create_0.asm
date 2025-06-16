.localvar 2 arguments

:[0]
push.i 950000
pop.v.i self.depth
pushi.e 99
pop.v.i self.con
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [5]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.fun
pushi.e 652
pop.v.i self.sprite_index

:[4]
popenv [3]
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [7]

:[5]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 133
conv.i.v
pushi.e 240
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rd
pushi.e 8
push.v self.rd
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.rd
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[7]
b [end]

:[8]
pushi.e 133
conv.i.v
pushi.e 240
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rd
pushi.e 8
push.v self.rd
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.rd
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]