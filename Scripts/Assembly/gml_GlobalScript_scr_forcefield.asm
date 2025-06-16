.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_forcefield (locals=0, argc=6)
:[1]
pushi.e 287
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.field
push.v arg.argument2
push.v self.field
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v arg.argument3
push.v self.field
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v arg.argument4
push.v self.field
pushi.e -9
pop.v.v [stacktop]self.skip
push.v arg.argument5
push.v self.field
pushi.e -9
pop.v.v [stacktop]self.stayVisible
push.v self.field
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
push.v self.field
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_forcefield
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_forcefield
popz.v

:[end]