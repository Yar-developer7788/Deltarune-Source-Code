.localvar 2 arguments
.localvar 25711 _shake 12850

:[0]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
push.v self.hidemouthback
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 40
pushenv [6]

:[5]
pushi.e 7
pop.v.i self.image_index
push.v 638.x
push.v 638.headoffset_x
add.v.v
pop.v.v self.x
push.v 638.y
push.v 638.headoffset_y
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.b self.visible

:[6]
popenv [5]
b [10]

:[7]
pushi.e 40
pushenv [9]

:[8]
pushi.e 0
pop.v.b self.visible

:[9]
popenv [8]

:[10]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ystart
push.v self.steptimer
push.v self.state
pushi.e 2
cmp.i.v LT
bf [12]

:[11]
push.d 0.15
conv.d.v
b [13]

:[12]
push.d 0.05
conv.d.v

:[13]
add.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
call.i abs(argc=1)
sub.v.v
push.v self.x
pushi.e 3
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_angle
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 135
add.i.v
push.v self.headoffset_y
add.v.v
push.v self.x
pushi.e 138
add.i.v
push.v self.headoffset_x
add.v.v
push.v self.image_index
pushi.e 2026
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [34]

:[15]
push.v self.state
pushi.e 2
cmp.i.v GTE
bf [17]

:[16]
push.v self.state
pushi.e 10
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bt [24]

:[19]
push.v self.state
pushi.e 11
cmp.i.v EQ
bf [22]

:[20]
push.v self.formtimer
pushi.e 30
cmp.i.v GTE
bf [22]

:[21]
push.v self.formtimer
pushi.e 70
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
b [25]

:[24]
push.e 1

:[25]
bf [33]

:[26]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
conv.i.v
b [29]

:[28]
pushi.e 1
conv.i.v

:[29]
pop.v.v local._shake
push.v self.ystart
push.v self.steptimer
push.v self.state
pushi.e 2
cmp.i.v LT
bf [31]

:[30]
push.d 0.15
conv.d.v
b [32]

:[31]
push.d 0.05
conv.d.v

:[32]
add.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
pushloc.v local._shake
pushloc.v local._shake
neg.v
call.i random_range(argc=2)
add.v.v
call.i abs(argc=1)
sub.v.v
push.v self.x
pushloc.v local._shake
pushloc.v local._shake
neg.v
call.i random_range(argc=2)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
b [34]

:[33]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.headoffset_y
add.v.v
push.v self.x
push.v self.headoffset_x
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
push.v self.destroyable
conv.v.b
bf [36]

:[35]
push.v self.state
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bt [42]

:[38]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.v self.formtimer
pushi.e 30
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
b [43]

:[42]
push.e 1

:[43]
bf [47]

:[44]
push.v self.hurtalpha
pushi.e 0
cmp.i.v GT
bf [46]

:[45]
push.v self.hurtalpha
push.d 0.1
sub.d.v
pop.v.v self.hurtalpha

:[46]
push.v self.hurtalpha
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[47]
push.v self.intro
pushi.e 0
cmp.i.v NEQ
bf [end]

:[48]
pushi.e 4
pop.v.i self.image_index
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.introtimer
pushi.e 30
conv.i.d
div.d.v
push.d 0.5
sub.d.v
push.d 1.5
div.d.v
call.i clamp(argc=3)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 1
conv.i.v
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.introtimer
pushi.e 30
conv.i.d
div.d.v
call.i clamp(argc=3)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
b [51]

:[50]
push.i 16777215
conv.i.v

:[51]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.introtimer
pushi.e 68
cmp.i.v GTE
bf [end]

:[52]
pushi.e 0
pop.v.i self.intro
pushi.e 4
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_alpha
push.i 16777215
pop.v.i self.image_blend

:[end]