.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_feetx (locals=0, argc=2)
:[1]
pushi.e 0
pop.v.i self._feetx
push.v arg.argument0
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v arg.argument1
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self._obj1middlex
push.v self._obj1middlex
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_feetx
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_feetx
popz.v

:[end]