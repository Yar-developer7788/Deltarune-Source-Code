.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_pan_to_obj (locals=0, argc=2)
:[1]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self._panx
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self._pany
push.v self._panx
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self._panx

:[3]
push.v self._panx
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GTE
bf [5]

:[4]
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self._panx

:[5]
push.v self._pany
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self._pany

:[7]
push.v self._pany
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GTE
bf [9]

:[8]
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self._pany

:[9]
push.v arg.argument1
push.v self._pany
push.v self._panx
call.i gml_Script_scr_pan_lerp(argc=3)
popz.v
exit.i

:[10]
push.i [function]gml_Script_scr_pan_to_obj
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pan_to_obj
popz.v

:[end]