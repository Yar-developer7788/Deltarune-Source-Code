.localvar 2 arguments

:[0]
push.v self.downframetimer
push.e 1
add.i.v
pop.v.v self.downframetimer
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
push.v self.downframetimer
pushi.e 3
cmp.i.v GTE
bf [5]

:[1]
push.v self.downframe
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.downframe
b [4]

:[3]
pushi.e 0
pop.v.i self.downframe

:[4]
pushi.e 0
pop.v.i self.downframetimer

:[5]
push.v self.walkdir
push.s "down"@25524
cmp.s.v EQ
bf [7]

:[6]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.downframe
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2379
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.downframe
pushi.e 4
mul.i.v
add.v.v
push.v self.walky
add.v.v
push.v self.x
push.v self.walkx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.walkdir
push.s "right"@4637
cmp.s.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.downframe
pushi.e 2
mul.i.v
add.v.v
pushi.e 32
sub.i.v
push.v self.x
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2372
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.downframe
pushi.e 4
mul.i.v
add.v.v
push.v self.walky
add.v.v
push.v self.x
push.v self.walkx
add.v.v
push.v self.image_index
pushi.e 2370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.walkdir
push.s "left"@5994
cmp.s.v EQ
bf [11]

:[10]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.downframe
pushi.e 2
mul.i.v
add.v.v
pushi.e 32
sub.i.v
push.v self.sprite_width
push.v self.x
add.v.v
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2372
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.downframe
pushi.e 4
mul.i.v
add.v.v
push.v self.walky
add.v.v
push.v self.sprite_width
push.v self.x
add.v.v
push.v self.walkx
add.v.v
push.v self.image_index
pushi.e 2370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
push.v self.walklerp
push.d 0.01
push.v self.walklerp
pushi.e 2
conv.i.d
div.d.v
add.v.d
add.v.v
pop.v.v self.walklerp
push.v self.walklerp
pushi.e 1
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.walklerp

:[14]
b [23]

:[15]
push.v self.walklerp
pushi.e 0
cmp.i.v GTE
bf [17]

:[16]
push.v self.walklerp
push.d 0.85
mul.d.v
pop.v.v self.walklerp

:[17]
push.v self.walklerp
call.i abs(argc=1)
push.d 0.02
cmp.d.v LT
bf [19]

:[18]
pushi.e 0
pop.v.i self.walklerp

:[19]
push.v self.walkx
call.i abs(argc=1)
push.d 0.02
cmp.d.v LT
bf [21]

:[20]
pushi.e 0
pop.v.i self.walkx

:[21]
push.v self.walky
call.i abs(argc=1)
push.d 0.02
cmp.d.v LT
bf [23]

:[22]
pushi.e 0
pop.v.i self.walky

:[23]
push.v self.animsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.walklerp
mul.v.v
pushi.e 2
mul.i.v
pop.v.v self.walkx
pushi.e -26
conv.i.v
push.v self.walklerp
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.walky
push.v self.alwayswalking
pushi.e 1
cmp.i.v EQ
bf [end]

:[24]
pushi.e -26
pop.v.i self.walky

:[end]