.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.width
push.d 0.03333333333333333
add.d.v
pop.v.v self.width
push.v 697.x
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
push.v self.vineid
pushi.e 5
mul.i.v
add.v.v
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x3
push.v 697.x
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e 697
push.v self.vineid
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
push.v self.vineid
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.x4
pushglb.v global.myfight
pushi.e 3
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterattackname
push.s "UnspecifiedSneoAttack"@25825
cmp.s.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v 697.x
pushi.e 697
push.v self.a
conv.v.i
push.v [array]self.partx_back
add.v.v
pushi.e 697
push.v self.a
conv.v.i
push.v [array]self.partxoff_back
add.v.v
pushi.e 697
push.v self.a
conv.v.i
push.v [array]self.partsiner_back
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x1

:[5]
push.v 697.y
pushi.e 697
push.v self.a
conv.v.i
push.v [array]self.party_back
add.v.v
pushi.e 697
push.v self.a
conv.v.i
push.v [array]self.partyoff_back
add.v.v
pop.v.v self.y1
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[6]
push.v self.x1
push.v self.x3
pushi.e 1
sub.i.v
cmp.v.v LT
bf [8]

:[7]
push.v self.x1
pushi.e 1
add.i.v
pop.v.v self.x1

:[8]
push.v self.x2
push.v self.x3
pushi.e 1
sub.i.v
cmp.v.v LT
bf [10]

:[9]
push.v self.x2
pushi.e 1
add.i.v
pop.v.v self.x2

:[10]
push.v self.x1
push.v self.x3
pushi.e 1
add.i.v
cmp.v.v GT
bf [12]

:[11]
push.v self.x1
pushi.e 1
sub.i.v
pop.v.v self.x1

:[12]
push.v self.x2
push.v self.x3
pushi.e 1
add.i.v
cmp.v.v GT
bf [14]

:[13]
push.v self.x2
pushi.e 1
sub.i.v
pop.v.v self.x2

:[14]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [6]

:[15]
popz.i
push.v self.timer
pushi.e 31
cmp.i.v GTE
bf [26]

:[16]
push.i 237044
setowner.e
pushi.e 1
conv.i.v
pushi.e 697
push.v self.vineid
conv.v.i
pop.v.v [array]self.partvisible
push.i 237045
setowner.e
pushi.e 0
conv.i.v
pushi.e 697
push.v self.vineid
conv.v.i
pop.v.v [array]self.partweakened
push.v 697.extra_vines
pushi.e 0
cmp.i.v GT
bf [25]

:[17]
pushi.e 0
pop.v.i self.ii

:[18]
push.v self.ii
pushi.e 18
cmp.i.v LT
bf [25]

:[19]
pushi.e 697
push.v self.ii
conv.v.i
push.v [array]self.partvisible_back
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v 697.extra_vines
pushi.e 0
cmp.i.v GT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v 697.extra_vines
push.e 1
sub.i.v
pop.v.v 697.extra_vines
push.i 237037
setowner.e
pushi.e 1
conv.i.v
pushi.e 697
push.v self.ii
conv.v.i
pop.v.v [array]self.partvisible_back
push.v 697.vinebgcount
push.e 1
add.i.v
pop.v.v 697.vinebgcount

:[24]
push.v self.ii
pushi.e 1
add.i.v
pop.v.v self.ii
b [18]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
push.v self.hide
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
exit.i

:[28]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.width
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_line_width(argc=5)
popz.v
pushi.e 31
push.v self.timer
sub.v.i
pushi.e 30
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
call.i make_colour_rgb(argc=3)
call.i draw_set_color(argc=1)
popz.v
push.v self.width
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

:[end]