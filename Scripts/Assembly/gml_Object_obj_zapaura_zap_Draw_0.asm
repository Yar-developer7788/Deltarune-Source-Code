.localvar 2 arguments

:[0]
push.v self.actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[4]
pushi.e 1
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i random(argc=1)
push.v self.image_blend
push.v self.dir
push.v self.image_yscale
push.v self.dis
pushi.e 300
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2094
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i random(argc=1)
push.v self.tint
push.v self.dir
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.dis
pushi.e 300
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2
mul.i.v
pushi.e 2094
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]