.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 1
pop.v.i self.grazetpfactor
pushi.e 1
pop.v.i self.grazetimefactor
pushi.e 1
pop.v.i self.grazesizefactor
push.v self.grazetpfactor
pushi.e 15
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.grazetpfactor
push.v self.grazetimefactor
pushi.e 14
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.grazetimefactor
push.v self.grazesizefactor
pushi.e 3
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.grazesizefactor
push.v self.grazesizefactor
pushi.e 9
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.25
mul.d.v
add.v.v
pop.v.v self.grazesizefactor
push.v self.grazetimefactor
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
pushi.e 3
pop.v.i self.grazetimefactor

:[2]
push.v self.grazetpfactor
pushi.e 3
cmp.i.v GT
bf [4]

:[3]
pushi.e 3
pop.v.i self.grazetpfactor

:[4]
push.v self.grazesizefactor
pushi.e 3
cmp.i.v GT
bf [6]

:[5]
pushi.e 3
pop.v.i self.grazesizefactor

:[6]
push.v self.grazesizefactor
pop.v.v self.image_xscale
push.v self.grazesizefactor
pop.v.v self.image_yscale
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e 0
pop.v.i self.sizexoff
pushi.e 0
pop.v.i self.sizeyoff
push.v 631.x
pushi.e 10
add.i.v
push.v self.sizexoff
add.v.v
pop.v.v self.x
push.v 631.y
pushi.e 10
add.i.v
push.v self.sizeyoff
add.v.v
pop.v.v self.y

:[end]