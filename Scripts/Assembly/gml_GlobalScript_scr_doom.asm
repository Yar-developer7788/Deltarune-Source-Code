.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_doom (locals=0, argc=2)
:[1]
pushi.e 1096
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [3]

:[2]
push.i 38341121
setowner.e
push.v arg.argument1
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v arg.argument0
pop.v.v self.target

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_doom
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_doom
popz.v

:[end]