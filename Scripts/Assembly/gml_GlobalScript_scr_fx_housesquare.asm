.localvar 2 arguments
.localvar 9259 gr 1642

:[0]
b [5]

> gml_Script_scr_fx_housesquare (locals=1, argc=3)
:[1]
pushi.e 0
pop.v.i local.gr
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
pushi.e 210
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v local.gr
push.v arg.argument2
pushloc.v local.gr
pushi.e -9
pop.v.v [stacktop]self.color
push.i 33950209
setowner.e
pushi.e 1
push.v self.i
pushi.e 3
mul.i.v
add.v.i
pushloc.v local.gr
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.depth
pushi.e 10
sub.i.v
pushloc.v local.gr
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_fx_housesquare
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_fx_housesquare
popz.v

:[end]