.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.fade
push.d 0.075
add.d.v
pop.v.v self.fade
push.d 0.25
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
push.v self.fade
mul.v.i
pushi.e 3
add.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]