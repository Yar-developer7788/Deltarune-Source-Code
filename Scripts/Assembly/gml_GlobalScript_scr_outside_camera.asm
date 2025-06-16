.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_outside_camera (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self._offcamera
push.v self.x
push.v self.sprite_width
add.v.v
pop.v.v self.rightx
push.v self.x
pop.v.v self.leftx
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.bottomy
push.v self.y
pop.v.v self.topy
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
push.v arg.argument0
add.v.v
cmp.v.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self._offcamera

:[3]
push.v self.rightx
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v arg.argument0
sub.v.v
cmp.v.v LT
bf [5]

:[4]
pushi.e 1
pop.v.i self._offcamera

:[5]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
push.v arg.argument0
add.v.v
cmp.v.v GT
bf [7]

:[6]
pushi.e 1
pop.v.i self._offcamera

:[7]
push.v self.bottomy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v arg.argument0
sub.v.v
cmp.v.v LT
bf [9]

:[8]
pushi.e 1
pop.v.i self._offcamera

:[9]
push.v self._offcamera
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_outside_camera
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_outside_camera
popz.v

:[end]