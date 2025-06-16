.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_caterpillar_facing (locals=0, argc=1)
:[1]
pushi.e 276
pushenv [5]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [5]

:[4]
push.i 10717001
setowner.e
push.v arg.argument0
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
popenv [2]
exit.i

:[6]
push.i [function]gml_Script_scr_caterpillar_facing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_caterpillar_facing
popz.v

:[end]