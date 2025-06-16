.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_bullet_inherit_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.damage
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.grazepoints
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.timepoints
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.timepoints
push.v self.inv
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.inv
push.v self.target
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.grazetimer

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_bullet_inherit_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bullet_inherit_ch1
popz.v

:[end]