.localvar 2 arguments
.localvar 6402 flash 10388

:[0]
push.v self.bigshot
conv.v.b
bf [3]

:[1]
push.v self.shotready
conv.v.b
bf [3]

:[2]
push.v self.flashtimer
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
pop.v.b local.flash
pushloc.v local.flash
conv.v.b
bf [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[6]
call.i draw_self(argc=0)
popz.v
pushloc.v local.flash
conv.v.b
bf [end]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]