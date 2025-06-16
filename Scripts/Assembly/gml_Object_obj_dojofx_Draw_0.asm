.localvar 2 arguments
.localvar 9260 color 8985

:[0]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v self.ball
pushi.e -9
push.v [stacktop]self.y
pushi.e -200
cmp.i.v GTE
bf [6]

:[5]
push.v self.ball
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.vspeed
b [7]

:[6]
pushi.e 0
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[7]
b [10]

:[8]
push.v self.ball
pushi.e -9
push.v [stacktop]self.y
pushi.e -10
cmp.i.v LT
bf [10]

:[9]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.ball
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.ball
pushi.e -9
pop.v.v [stacktop]self.y

:[10]
pushglb.v global.fighting
conv.v.b
bf [14]

:[11]
pushi.e 868
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.bgtype

:[13]
popenv [12]

:[14]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 220
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.i
pushi.e 255
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i gml_Script_scr_make_color_hsv(argc=3)
pop.v.v local.color
pushloc.v local.color
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.color
push.v self.ballback
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.ball
pushi.e -9
push.v [stacktop]self.x
push.v self.ballback
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ball
pushi.e -9
push.v [stacktop]self.y
push.v self.ballback
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 6000
push.v self.ballback
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [17]

:[16]
push.v self.i
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 48
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pop.v.v self.sino
pushi.e 0
conv.b.v
pushi.e 16
push.v self.sino
call.i abs(argc=1)
pushi.e 12
mul.i.v
add.v.i
push.v self.ball
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
add.v.v
push.v self.ball
pushi.e -9
push.v [stacktop]self.x
push.v self.sino
pushi.e 200
mul.i.v
add.v.v
call.i draw_circle(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
push.v self.y
pushi.e 200
add.i.v
push.v self.x
pushi.e 80
add.i.v
push.v self.y
pushi.e 200
add.i.v
push.v self.x
pushi.e 80
sub.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
call.i draw_triangle_color(argc=10)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.bsiner
push.e 1
add.i.v
pop.v.v self.bsiner
push.v self.bsiner
pushi.e 80
cmp.i.v GTE
bf [19]

:[18]
push.v self.bsiner
pushi.e 80
sub.i.v
pop.v.v self.bsiner

:[19]
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[21]
push.v self.image_alpha
pushloc.v local.color
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -240
push.v self.y
add.v.i
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v self.bsiner
sub.v.v
pushi.e 4
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 1197
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushloc.v local.color
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -240
push.v self.y
add.v.i
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v self.bsiner
add.v.v
pushi.e 570
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 1197
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [20]

:[end]