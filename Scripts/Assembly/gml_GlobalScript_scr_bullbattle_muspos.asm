.localvar 2 arguments
.localvar 12196 targ 3808

:[0]
b [9]

> gml_Script_scr_bullbattle_muspos (locals=1, argc=1)
:[1]
push.v arg.argument0
push.v self.modifier
sub.v.v
pop.v.v local.targ
push.v self.trackpos
pushloc.v local.targ
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.trackpos
pushloc.v local.targ
push.d 0.01
add.d.v
cmp.v.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
pushi.e 1
conv.b.v
ret.v

:[6]
b [8]

:[7]
pushi.e 0
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_bullbattle_muspos
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bullbattle_muspos
popz.v

:[end]