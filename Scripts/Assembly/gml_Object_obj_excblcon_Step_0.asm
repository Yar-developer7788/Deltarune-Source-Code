.localvar 2 arguments

:[0]
call.i gml_Script_button3_h(argc=0)
conv.v.b
bf [end]

:[1]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.onesec
push.v self.image_xscale
push.v self.onesec
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.onesec
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.depth
push.v self.onesec
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_index
push.v self.onesec
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_speed
push.v self.onesec
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e 2
conv.i.v
push.v self.onesec
call.i gml_Script_scr_doom(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]