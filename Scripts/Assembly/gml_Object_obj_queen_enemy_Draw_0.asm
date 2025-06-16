.localvar 2 arguments
.localvar 14787 _flash 12072

:[0]
pushi.e 0
pop.v.i local._flash
pushi.e 576
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.flash

:[2]
popenv [1]
pushi.e 372
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.flash

:[4]
popenv [3]
pushi.e 373
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.flash

:[6]
popenv [5]
pushi.e 374
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.flash

:[8]
popenv [7]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
bt [10]

:[9]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [46]

:[12]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v NEQ
bf [15]

:[13]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v NEQ
bf [15]

:[14]
push.v self.shieldacthp
pushi.e 0
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i local._flash

:[18]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v NEQ
bf [21]

:[19]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v NEQ
bf [21]

:[20]
push.v self.shieldhp
pushi.e 0
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i local._flash

:[24]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [26]

:[25]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 0
pop.v.i local._flash

:[29]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [31]

:[30]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bt [37]

:[33]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [36]

:[35]
push.e 0

:[36]
b [38]

:[37]
push.e 1

:[38]
bf [46]

:[39]
pushi.e 372
pushenv [41]

:[40]
pushi.e 1
pop.v.i self.flash

:[41]
popenv [40]
pushi.e 373
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.flash

:[43]
popenv [42]
pushi.e 374
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.flash

:[45]
popenv [44]
pushi.e 0
pop.v.i self.flash

:[46]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [49]

:[47]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v self.shieldacthp
pushi.e 0
cmp.i.v LTE
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 1
pop.v.i local._flash

:[52]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [55]

:[53]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.v self.shieldhp
pushi.e 0
cmp.i.v LTE
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i local._flash

:[58]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [62]

:[59]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [62]

:[60]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.shieldacthp
pushi.e 0
cmp.i.v LTE
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1
pop.v.i local._flash

:[65]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [69]

:[66]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [69]

:[67]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.v self.shieldhp
pushi.e 0
cmp.i.v LTE
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i local._flash

:[72]
pushloc.v local._flash
pushi.e 1
cmp.i.v EQ
bf [76]

:[73]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[74]
pushi.e 1
pop.v.i 576.flash

:[75]
pushi.e 0
pop.v.i self.flash

:[76]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [77]

:[77]
push.v self.sprite_index
pushi.e 1891
cmp.i.v EQ
bt [84]

:[78]
push.v self.sprite_index
pushi.e 1890
cmp.i.v EQ
bt [84]

:[79]
push.v self.sprite_index
pushi.e 1892
cmp.i.v EQ
bt [84]

:[80]
push.v self.sprite_index
push.v self.idlesprite
cmp.v.v EQ
bf [82]

:[81]
push.v self.state
pushi.e 3
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
b [85]

:[84]
push.e 1

:[85]
bf [94]

:[86]
push.v self.image_index
push.d 0.16666666666666666
add.d.v
pop.v.v self.image_index
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.v self.fsiner
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[88]
push.v self.endcon
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
push.v self.sprite_index
pushi.e 1890
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.d 0.4
conv.d.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 29
add.i.v
pushi.e 0
conv.i.v
pushi.e 1913
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
b [97]

:[94]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [96]

:[95]
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
pushi.e 76
add.i.v
push.v self.x
pushi.e 66
add.i.v
push.v 562.bufferbar
pushi.e 8
mod.i.v
pushi.e 1928
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [97]

:[96]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v

:[97]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
pushi.e 0
pop.v.i self.flash

:[99]
pushi.e 0
pop.v.i self.becomeflash

:[end]