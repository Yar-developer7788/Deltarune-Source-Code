.localvar 2 arguments

:[0]
push.v self.customBox
conv.v.b
bf [end]

:[1]
pushi.e 56
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.spr_custom_box
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.custom_box_sprite

:[end]