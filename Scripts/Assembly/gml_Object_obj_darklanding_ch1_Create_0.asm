.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [4]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1351
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.fun
pushi.e 4201
pop.v.i self.sprite_index

:[3]
popenv [2]
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [end]

:[4]
pushi.e 99
pop.v.i self.con
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 1409
conv.i.v
pushi.e 240
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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