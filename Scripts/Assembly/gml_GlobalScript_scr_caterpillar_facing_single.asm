.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_caterpillar_facing_single (locals=0, argc=2)
:[1]
pushi.e 276
pushenv [6]

:[2]
push.v self.name
push.v arg.argument0
cmp.v.v EQ
bf [6]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [6]

:[5]
push.i 10782537
setowner.e
push.v arg.argument1
call.i gml_Script_scr_facing_letter_to_number(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
popenv [2]
exit.i

:[7]
push.i [function]gml_Script_scr_caterpillar_facing_single
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_caterpillar_facing_single
popz.v

:[end]