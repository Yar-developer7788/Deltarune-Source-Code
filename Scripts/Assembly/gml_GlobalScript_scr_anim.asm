.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_anim (locals=0, argc=2)
:[1]
pushi.e 230
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.objanim
push.v self.id
push.v self.objanim
pushi.e -9
pop.v.v [stacktop]self.target
push.v arg.argument0
push.v self.objanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v arg.argument1
push.v self.objanim
pushi.e -9
pop.v.v [stacktop]self.framespeed
push.v self.objanim
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_anim
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_anim
popz.v

:[end]