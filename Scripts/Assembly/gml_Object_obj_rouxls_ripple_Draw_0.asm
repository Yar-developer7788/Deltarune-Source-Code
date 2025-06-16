.localvar 2 arguments

:[0]
push.v self.timer
push.d 0.1
add.d.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 3
conv.i.v
push.v self.timer
call.i gml_Script_scr_ease_out(argc=2)
push.v self.maxsize
mul.v.v
pop.v.v self.scale
push.v self.timer
push.d 0.25
cmp.d.v LT
bf [4]

:[3]
push.v self.timer
pushi.e 4
mul.i.v
pop.v.v self.alpha
b [7]

:[4]
push.v self.timer
push.d 0.75
cmp.d.v GT
bf [6]

:[5]
pushi.e 1
push.v self.timer
push.d 0.75
sub.d.v
pushi.e 4
mul.i.v
sub.v.i
pop.v.v self.alpha
b [7]

:[6]
pushi.e 1
pop.v.i self.alpha

:[7]
push.v self.alpha
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushi.e 750
conv.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]