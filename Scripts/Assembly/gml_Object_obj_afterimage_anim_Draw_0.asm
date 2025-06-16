.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.image_count

:[2]
push.v self.reverse
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.reverse
push.v self.image_count
pop.v.v self.image_index
push.v self.image_alpha
pop.v.v self.maxalpha
pushi.e 0
pop.v.i self.image_alpha
push.v self.fade
pushi.e -1
mul.i.v
pop.v.v self.fade

:[4]
push.v self.image_alpha
push.v self.fade
sub.v.v
pop.v.v self.image_alpha
pushi.e 1
push.v self.image_alpha
pushi.e 1
conv.i.d
div.d.v
sub.v.i
push.v self.image_count
mul.v.v
pop.v.v self.image_index
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bt [6]

:[5]
push.v self.image_alpha
pushi.e 1
cmp.i.v GT
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.image_alpha
push.v self.maxalpha
mul.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]