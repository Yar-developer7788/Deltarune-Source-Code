.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_teacup_topstart (locals=0, argc=0)
:[1]
pushi.e 1091
pushenv [3]

:[2]
push.v self.endY
pop.v.v self.y
pushi.e 1
pop.v.b self.reverse

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_teacup_topstart
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_teacup_topstart
popz.v

:[end]