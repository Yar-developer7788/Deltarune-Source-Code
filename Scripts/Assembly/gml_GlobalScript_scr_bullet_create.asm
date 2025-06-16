.localvar 2 arguments
.localvar 10362 __newbullet 2489

:[0]
b [5]

> gml_Script_scr_bullet_create (locals=1, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v local.__newbullet
push.v self.damage
pushloc.v local.__newbullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
pushloc.v local.__newbullet
pushi.e -9
pop.v.v [stacktop]self.target
push.s "element"@6426
conv.s.v
call.i @@This@@(argc=0)
call.i variable_instance_exists(argc=2)
conv.v.b
bf [3]

:[2]
push.v self.element
pushloc.v local.__newbullet
pushi.e -9
pop.v.v [stacktop]self.element

:[3]
pushloc.v local.__newbullet
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_bullet_create
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bullet_create
popz.v

:[end]