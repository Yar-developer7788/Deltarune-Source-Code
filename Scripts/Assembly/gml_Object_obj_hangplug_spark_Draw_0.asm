.localvar 2 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
push.v self.basey
pushi.e 190
add.i.v
div.v.v
pop.v.v self.amount
push.v self.amount
pushi.e 4
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.basey
push.v self.fallAmount
pushi.e 40
sub.i.v
add.v.v
pushi.e 6
push.v self.amount
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.amount
mul.v.v
add.v.v
push.v self.basey
push.v self.fallAmount
pushi.e 20
sub.i.v
add.v.v
pushi.e 6
push.v self.amount
mul.v.i
sub.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.amount
mul.v.v
sub.v.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
push.v self.scaler
call.i lerp(argc=3)
pop.v.v self.scaler
push.d 0.4
pop.v.d self.sparkalpha
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
push.v self.sparkalpha
push.i 16777215
conv.i.v
pushi.e 33
pushi.e 8
conv.i.v
call.i irandom(argc=1)
mul.v.i
pushi.e 2
push.v self.scaler
mul.v.i
pushi.e 2
push.v self.scaler
mul.v.i
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e 3285
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 353
conv.i.v
push.v self.depth
pushi.e 1
add.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_create_depth(argc=4)
pop.v.v self.afterimage
pushi.e 3285
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.afterimage
call.i gml_Script_scr_darksize(argc=1)
popz.v
push.d -0.2
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.xrate
push.d -0.2
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.yrate
pushi.e 33
pushi.e 8
conv.i.v
call.i irandom(argc=1)
mul.v.i
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.d 0.8
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]