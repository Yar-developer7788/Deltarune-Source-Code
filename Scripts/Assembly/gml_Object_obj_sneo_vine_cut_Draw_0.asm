.localvar 2 arguments
.localvar 25816 shakeamount2 13194

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.shakeamount
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shakeamount
push.e 1
sub.i.v
pop.v.v self.shakeamount

:[2]
push.v self.shakeamount
push.v self.shakeamount
pushi.e 2
mul.i.v
call.i random(argc=1)
sub.v.v
pop.v.v local.shakeamount2
push.v 697.y
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partyoff
add.v.v
pop.v.v self.y1
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [12]

:[3]
push.v self.timer
pushi.e 11
cmp.i.v EQ
bf [5]

:[4]
push.v self.x1
pop.v.v self.x3
push.v self.x2
pop.v.v self.x4
push.v self.y1
pushi.e 130
sub.i.v
pop.v.v self.y3
push.v self.y2
pop.v.v self.y4
push.v self.y1
pushi.e 130
sub.i.v
pop.v.v self.y2

:[5]
push.v self.timer
pushi.e 11
cmp.i.v GT
bf [10]

:[6]
push.v self.y4
push.v self.y3
cmp.v.v LT
bf [8]

:[7]
push.v self.y3
pushi.e 4
sub.i.v
pop.v.v self.y3

:[8]
push.v self.y1
push.v self.y2
cmp.v.v GT
bf [10]

:[9]
push.v self.y2
pushi.e 4
add.i.v
pop.v.v self.y2

:[10]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [26]

:[13]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [15]

:[14]
push.v self.timer
pushi.e 17
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.x3
push.v self.lineangle
pushi.e 23
add.i.v
push.v self.anglecutspeed
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x3
push.v self.y3
push.v self.lineangle
pushi.e 23
add.i.v
push.v self.anglecutspeed
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y3
push.v self.x2
push.v self.lineangle
pushi.e 157
sub.i.v
push.v self.anglecutspeed
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x2
push.v self.y2
push.v self.lineangle
pushi.e 157
sub.i.v
push.v self.anglecutspeed
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y2
push.v self.anglecutspeed
push.d 0.2
sub.d.v
pop.v.v self.anglecutspeed

:[18]
push.v self.timer
pushi.e 11
cmp.i.v GT
bf [20]

:[19]
push.v self.alpha
push.d 0.1
sub.d.v
pop.v.v self.alpha

:[20]
push.v self.timer
pushi.e 21
cmp.i.v GT
bf [21]

:[21]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bt [23]

:[22]
push.v self.alpha
push.d 0.1
cmp.d.v LT
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
push.v self.y1
push.v self.y2
sub.v.v
call.i abs(argc=1)
pushi.e 16
cmp.i.v LT
bt [28]

:[27]
push.v self.y2
push.v self.y1
cmp.v.v GT
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
pushi.e 0
pop.v.i self.bottomlinevisible

:[31]
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.timer
pushi.e 11
cmp.i.v GTE
bf [34]

:[32]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.hide
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bt [40]

:[36]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.hide
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
pushi.e 2
conv.i.v
push.v self.y4
push.v self.x4
push.v self.y3
push.v self.x3
call.i draw_line_width(argc=5)
popz.v

:[43]
push.v self.bottomlinevisible
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.v self.hide
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 2
conv.i.v
push.v self.y2
pushloc.v local.shakeamount2
add.v.v
push.v self.x2
pushloc.v local.shakeamount2
add.v.v
push.v self.y1
pushloc.v local.shakeamount2
add.v.v
push.v self.x1
pushloc.v local.shakeamount2
add.v.v
call.i draw_line_width(argc=5)
popz.v

:[48]
push.v self.timer
pushi.e 11
cmp.i.v LT
bf [50]

:[49]
push.v self.hide
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 11
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[53]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]