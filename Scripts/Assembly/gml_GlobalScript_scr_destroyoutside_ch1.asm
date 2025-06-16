.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_destroyoutside_ch1 (locals=0, argc=0)
:[1]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.sprite_width
sub.v.v
cmp.v.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
add.v.v
cmp.v.v GT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.sprite_height
sub.v.v
cmp.v.v LT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 480
add.i.v
push.v self.sprite_height
add.v.v
cmp.v.v GT
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_destroyoutside_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_destroyoutside_ch1
popz.v

:[end]