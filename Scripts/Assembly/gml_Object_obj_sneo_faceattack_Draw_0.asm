.localvar 2 arguments
.localvar 14367 hidesprite 12693

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 697.eyeshp
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v 697.eyeshp
pushi.e 16
conv.i.d
div.d.v
push.v self.blue_col
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[6]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v 697.nosehp
pushi.e 0
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v 697.nosehp
pushi.e 16
conv.i.d
div.d.v
push.v self.blue_col
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[11]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.v 697.mouthhp
pushi.e 0
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v 697.mouthhp
pushi.e 16
conv.i.d
div.d.v
push.v self.blue_col
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[16]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v 697.eyeshp
pushi.e 1
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bt [24]

:[20]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
push.i 16777215
pop.v.i self.image_blend

:[27]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.v 697.nosehp
pushi.e 1
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bt [35]

:[31]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
push.i 16777215
pop.v.i self.image_blend

:[38]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
push.v 697.mouthhp
pushi.e 1
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bt [46]

:[42]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
push.i 16777215
pop.v.i self.image_blend

:[49]
push.v self.shootflashtimer
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.i 65535
pop.v.i self.image_blend
push.v self.shootflashtimer
push.e 1
sub.i.v
pop.v.v self.shootflashtimer

:[51]
push.v self.hurtflashtimer
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
pushi.e 255
pop.v.i self.image_blend
push.v self.hurtflashtimer
push.e 1
sub.i.v
pop.v.v self.hurtflashtimer

:[53]
pushi.e 0
pop.v.i local.hidesprite
push.v self.invincibilitytimer
pushi.e 0
cmp.i.v GT
bf [64]

:[54]
push.v self.invincibilitytimer
pushi.e 10
cmp.i.v EQ
bt [60]

:[55]
push.v self.invincibilitytimer
pushi.e 9
cmp.i.v EQ
bt [60]

:[56]
push.v self.invincibilitytimer
pushi.e 6
cmp.i.v EQ
bt [60]

:[57]
push.v self.invincibilitytimer
pushi.e 5
cmp.i.v EQ
bt [60]

:[58]
push.v self.invincibilitytimer
pushi.e 3
cmp.i.v EQ
bt [60]

:[59]
push.v self.invincibilitytimer
pushi.e 2
cmp.i.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [63]

:[62]
pushi.e 1
pop.v.i local.hidesprite

:[63]
push.v self.invincibilitytimer
push.e 1
sub.i.v
pop.v.v self.invincibilitytimer
pushi.e 255
pop.v.i self.image_blend

:[64]
pushloc.v local.hidesprite
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
call.i draw_self(argc=0)
popz.v

:[66]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.d 2.4
conv.d.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 3
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2234
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]