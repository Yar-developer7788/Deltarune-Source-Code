.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.wallcount
push.v self.wallcountmax
cmp.v.v LT
bf [4]

:[3]
push.v self.timer
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.wallcreatetimer
cmp.v.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [52]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [51]

:[8]
push.v self.i
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
push.v self.i
push.v self.wallsize
pushi.e 1
sub.i.v
cmp.v.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [17]

:[12]
push.i 167278
setowner.e
pushi.e 39
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 34
mul.i.v
add.v.v
pushi.e 172
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 133642
setowner.e
pushi.e 2003
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
push.d 1.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 233343
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133654
setowner.e
push.i 16777215
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 233346
setowner.e
push.v self.wallcount
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.wallnumber
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.i 233473
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.wallcontroller

:[14]
push.v self.i
push.v self.wallsize
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [16]

:[15]
push.i 167278
setowner.e
pushi.e 39
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 34
mul.i.v
add.v.v
pushi.e 180
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 50
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 133642
setowner.e
pushi.e 1620
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
push.d 1.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 233343
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133654
setowner.e
push.i 16777215
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 233346
setowner.e
push.v self.wallcount
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.wallnumber

:[16]
b [50]

:[17]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.emptyspot1
push.v self.i
cmp.v.v EQ
bt [22]

:[18]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.emptyspot2
push.v self.i
cmp.v.v EQ
bt [22]

:[19]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.emptyspot3
push.v self.i
cmp.v.v EQ
bt [22]

:[20]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.emptyspot4
push.v self.i
cmp.v.v EQ
bt [22]

:[21]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.emptyspot5
push.v self.i
cmp.v.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
b [50]

:[25]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.pipispot1
push.v self.i
cmp.v.v EQ
bt [30]

:[26]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.pipispot2
push.v self.i
cmp.v.v EQ
bt [30]

:[27]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.pipispot3
push.v self.i
cmp.v.v EQ
bt [30]

:[28]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.pipispot4
push.v self.i
cmp.v.v EQ
bt [30]

:[29]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.pipispot5
push.v self.i
cmp.v.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
push.i 167278
setowner.e
pushi.e 38
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 34
mul.i.v
add.v.v
pushi.e 170
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 233346
setowner.e
push.v self.wallcount
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.wallnumber
b [50]

:[33]
push.i 167278
setowner.e
pushi.e 39
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 34
mul.i.v
add.v.v
pushi.e 172
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 133642
setowner.e
pushi.e 2060
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
push.d 1.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.71
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 233343
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 233346
setowner.e
push.v self.wallcount
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.wallnumber
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.breakspot1
push.v self.i
cmp.v.v EQ
bt [38]

:[34]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.breakspot2
push.v self.i
cmp.v.v EQ
bt [38]

:[35]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.breakspot3
push.v self.i
cmp.v.v EQ
bt [38]

:[36]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.breakspot4
push.v self.i
cmp.v.v EQ
bt [38]

:[37]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.breakspot5
push.v self.i
cmp.v.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133642
setowner.e
pushi.e 2033
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133651
setowner.e
push.d 1.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
b [50]

:[41]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.redbreakspot1
push.v self.i
cmp.v.v EQ
bt [46]

:[42]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.redbreakspot2
push.v self.i
cmp.v.v EQ
bt [46]

:[43]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.redbreakspot3
push.v self.i
cmp.v.v EQ
bt [46]

:[44]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.redbreakspot4
push.v self.i
cmp.v.v EQ
bt [46]

:[45]
pushi.e -1
push.v self.wallcount
conv.v.i
push.v [array]self.redbreakspot5
push.v self.i
cmp.v.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 231964
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.red
push.i 133642
setowner.e
pushi.e 2033
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133651
setowner.e
push.d 1.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133654
setowner.e
pushi.e 255
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend
b [50]

:[49]
push.i 133654
setowner.e
push.i 16777215
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[50]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[51]
pushi.e 0
pop.v.i self.timer
push.v self.wallcount
push.e 1
add.i.v
pop.v.v self.wallcount

:[52]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [53]

:[53]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [end]

:[end]