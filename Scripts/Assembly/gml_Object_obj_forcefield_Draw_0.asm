.localvar 2 arguments
.localvar 10816 height 9010
.localvar 6665 width 9011

:[0]
push.v self.black_override
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
b [end]

:[2]
push.v self.basic
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.ignorealpha
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [11]

:[6]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.f
div.v.v
pop.v.v self.cl
push.v self.cl
pushi.e 40
cmp.i.v GT
bf [8]

:[7]
pushi.e 40
pop.v.i self.cl

:[8]
push.v self.cl
pushi.e 10
cmp.i.v LT
bf [10]

:[9]
pushi.e 10
pop.v.i self.cl

:[10]
pushi.e 1
push.v self.cl
pushi.e 10
sub.i.v
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.image_alpha

:[11]
push.v self.stayVisible
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.ignorealpha
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.image_alpha

:[16]
push.v self.image_yscale
push.v self.f
div.v.v
pop.v.v local.height
push.v self.image_yscale
pushi.e 2
cmp.i.v GT
bf [30]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushloc.v local.height
cmp.v.v LT
bf [30]

:[19]
pushi.e 0
pop.v.i self.done
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.f
mul.v.i
pushi.e 1
push.v self.f
mul.v.i
push.v self.y
push.v self.i
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
pop.v.i self.done

:[21]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [29]

:[25]
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.height
cmp.v.v GTE
bf [27]

:[26]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.f
mul.v.i
pushi.e 1
push.v self.f
mul.v.i
push.v self.y
push.v self.i
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
pushi.e 20
push.v self.f
mul.v.i
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [28]

:[27]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.f
mul.v.i
pushi.e 1
push.v self.f
mul.v.i
push.v self.y
push.v self.i
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
pushi.e 1
pop.v.i self.done

:[29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[30]
push.v self.image_xscale
push.v self.f
div.v.v
pop.v.v local.width
push.v self.image_xscale
pushi.e 2
cmp.i.v GT
bf [44]

:[31]
pushi.e 0
pop.v.i self.j

:[32]
push.v self.j
pushloc.v local.width
cmp.v.v LT
bf [44]

:[33]
pushi.e 0
pop.v.i self.done
push.v self.j
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.f
mul.v.i
pushi.e 1
push.v self.f
mul.v.i
push.v self.y
push.v self.x
push.v self.j
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2282
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
pop.v.i self.done

:[35]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [43]

:[39]
push.v self.j
pushi.e 1
add.i.v
pushloc.v local.width
cmp.v.v GTE
bf [41]

:[40]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.f
mul.v.i
pushi.e -1
push.v self.f
mul.v.i
push.v self.y
push.v self.x
push.v self.j
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
pushi.e 20
push.v self.f
mul.v.i
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2282
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [42]

:[41]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.f
mul.v.i
pushi.e -1
push.v self.f
mul.v.i
push.v self.y
push.v self.x
push.v self.j
pushi.e 20
mul.i.v
push.v self.f
mul.v.v
add.v.v
pushi.e 20
push.v self.f
mul.v.i
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
pushi.e 2283
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
pushi.e 1
pop.v.i self.done

:[43]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [32]

:[44]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [end]

:[46]
push.v self.siner
push.d 0.25
add.d.v
pop.v.v self.siner

:[end]