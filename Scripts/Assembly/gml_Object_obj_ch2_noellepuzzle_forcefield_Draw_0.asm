.localvar 2 arguments
.localvar 10816 height 18350
.localvar 6665 width 18351

:[0]
push.v self.stayVisible
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_alpha

:[2]
push.v self.fadeout
conv.v.b
bf [6]

:[3]
push.v self.stayVisible
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.stayVisible

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_alpha
push.d 0.1
sub.d.v
call.i clamp(argc=3)
pop.v.v self.image_alpha

:[6]
push.v self.image_yscale
push.v self.f
div.v.v
pop.v.v local.height
push.v self.image_yscale
pushi.e 2
cmp.i.v GT
bf [20]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushloc.v local.height
cmp.v.v LT
bf [20]

:[9]
pushi.e 0
pop.v.i self.done
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
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

:[11]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [19]

:[15]
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.height
cmp.v.v GTE
bf [17]

:[16]
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
b [18]

:[17]
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

:[18]
pushi.e 1
pop.v.i self.done

:[19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[20]
push.v self.image_xscale
push.v self.f
div.v.v
pop.v.v local.width
push.v self.image_xscale
pushi.e 2
cmp.i.v GT
bf [34]

:[21]
pushi.e 0
pop.v.i self.j

:[22]
push.v self.j
pushloc.v local.width
cmp.v.v LT
bf [34]

:[23]
pushi.e 0
pop.v.i self.done
push.v self.j
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
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

:[25]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [33]

:[29]
push.v self.j
pushi.e 1
add.i.v
pushloc.v local.width
cmp.v.v GTE
bf [31]

:[30]
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
b [32]

:[31]
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

:[32]
pushi.e 1
pop.v.i self.done

:[33]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [22]

:[34]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.fadeout
conv.v.b
bf [36]

:[35]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [end]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[end]