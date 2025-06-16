.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_pan_to_obj_old (locals=0, argc=2)
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
pop.v.v self._wd
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
pop.v.v self._ht
push.v self._wd
pop.v.v self._vx
push.v self._ht
pop.v.v self._vy
push.v self._vx
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self._vx

:[3]
push.v self._vx
pushbltn.v builtin.room_width
push.v self._vx
sub.v.v
cmp.v.v GT
bf [5]

:[4]
pushbltn.v builtin.room_width
push.v self._vx
sub.v.v
pop.v.v self._vx

:[5]
push.v self._vy
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self._vy

:[7]
push.v self._vy
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [9]

:[8]
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self._vy

:[9]
push.v arg.argument1
push.v self._vy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
push.v arg.argument1
div.v.v
push.v self._vx
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
push.v arg.argument1
div.v.v
call.i gml_Script_scr_pan(argc=3)
popz.v
exit.i

:[10]
push.i [function]gml_Script_scr_pan_to_obj_old
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pan_to_obj_old
popz.v

:[end]