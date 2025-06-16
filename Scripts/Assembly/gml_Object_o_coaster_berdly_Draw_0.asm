.localvar 2 arguments
.localvar 6483 yy 11390

:[0]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.sprite_index
pushi.e 1076
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v 484.sprite_index
pop.v.v self.sprite_index
push.v 484.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[5]
push.v 484.endcon
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1076
pop.v.i self.sprite_index

:[7]
pushi.e 0
pop.v.i local.yy
push.v self.sprite_index
pushi.e 1076
cmp.i.v EQ
bf [9]

:[8]
pushi.e 17
pop.v.i self.xx
pushi.e -18
pop.v.i local.yy
b [10]

:[9]
pushi.e -8
pop.v.i self.xx

:[10]
push.v self.queenmode
pushi.e 0
cmp.i.v EQ
bf [21]

:[11]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
pushi.e 16
add.i.v
push.v self.x
push.v self.xshake
add.v.v
pushi.e 0
conv.i.v
pushi.e 1868
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 487
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
push.v 484.state
pushi.e 3
cmp.i.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 11
sub.i.v
pushi.e 20
add.i.v
pushloc.v local.yy
add.v.v
push.v self.x
push.v self.xshake
add.v.v
push.v self.xx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v 484.flash
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v 484.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 11
sub.i.v
pushi.e 20
add.i.v
push.v self.x
push.v self.xshake
add.v.v
push.v self.xx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[17]
push.v self.xshake
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
pushi.e 16
add.i.v
push.v self.x
push.v self.xshake
add.v.v
pushi.e 0
conv.i.v
pushi.e 1867
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
push.v self.xshake
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
pushi.e 16
add.i.v
push.v self.x
push.v self.xshake
add.v.v
pushi.e 1
conv.i.v
pushi.e 1867
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
pushi.e 1866
pop.v.i self.indsprite
push.v self.queenmode
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1866
pop.v.i self.indsprite

:[23]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.drawpremonition
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [42]

:[27]
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
push.v self.premonition
cmp.v.v LT
bf [42]

:[29]
push.i 16776960
pop.v.i self.blendo
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.i 65535
pop.v.i self.blendo

:[31]
push.v self.i
pushi.e 2
cmp.i.v GTE
bf [33]

:[32]
push.i 4235519
pop.v.i self.blendo

:[33]
push.v self.forceypos
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.d 0.4
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.i
push.d 0.1
mul.d.v
sub.v.v
push.v self.blendo
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
pushi.e -1
pushi.e 0
push.v [array]self.yspot
push.v self.x
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 40
push.v self.queenmode
mul.v.i
add.v.v
push.v self.image_index
push.v self.indsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
push.v self.forceypos
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.d 0.4
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.i
push.d 0.1
mul.d.v
sub.v.v
push.v self.blendo
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
pushi.e -1
pushi.e 1
push.v [array]self.yspot
push.v self.x
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 40
push.v self.queenmode
mul.v.i
add.v.v
push.v self.image_index
push.v self.indsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
push.v self.forceypos
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.d 0.4
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.i
push.d 0.1
mul.d.v
sub.v.v
push.v self.blendo
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
pushi.e -1
pushi.e 2
push.v [array]self.yspot
push.v self.x
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 40
push.v self.queenmode
mul.v.i
add.v.v
push.v self.image_index
push.v self.indsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
push.v self.forceypos
pushi.e -1
cmp.i.v EQ
bf [41]

:[40]
push.d 0.4
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.i
push.d 0.1
mul.d.v
sub.v.v
push.v self.blendo
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
pushi.e -1
pushi.e -1
push.v self.ycount
push.v self.i
add.v.v
conv.v.i
push.v [array]self.nexty
conv.v.i
push.v [array]self.yspot
push.v self.x
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 40
push.v self.queenmode
mul.v.i
add.v.v
push.v self.image_index
push.v self.indsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [28]

:[42]
push.v self.queenmode
pushi.e 1
cmp.i.v EQ
bf [end]

:[43]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yshake
add.v.v
push.v self.x
push.v self.xshake
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]