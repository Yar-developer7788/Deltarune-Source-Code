.localvar 2 arguments
.localvar 26266 mercygainedthisturn 13372
.localvar 107 i 13373
.localvar 7017 a 13374
.localvar 26156 maxv 13375
.localvar 26157 multicut 13376
.localvar 6801 c 13377
.localvar 6706 d 13378
.localvar 26267 maxvines 13379
.localvar 26268 max_break 13380

:[0]
push.v 697.singleshotmercy
pushi.e 9
cmp.i.v GT
bf [10]

:[1]
pushi.e 697
pushenv [9]

:[2]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 698.type
push.d 1.5
cmp.d.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v 698.mercyaccumulated
pushi.e 1
add.i.v
pop.v.v 698.mercyaccumulated
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushi.e 1
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i 231593
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.hittarget
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.hittarget
popz.v
b [8]

:[7]
pushi.e 1
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[8]
pushi.e 0
pop.v.i self.singleshotmercy

:[9]
popenv [2]

:[10]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [12]

:[11]
push.i 171098
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
push.i 171507
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsiner
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 167985
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.party
push.i 171256
setowner.e
pushi.e -1
pushi.e 5
push.v [array]self.partsprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partxoff
push.i 171257
setowner.e
pushi.e -1
pushi.e 5
push.v [array]self.partsprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partyoff

:[12]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [67]

:[13]
push.v self.prevmercy
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
cmp.v.v NEQ
bf [67]

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
push.v self.prevmercy
sub.v.v
pop.v.v local.mercygainedthisturn
pushloc.v local.mercygainedthisturn
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [57]

:[15]
push.v self.prevmercy
push.e 1
add.i.v
pop.v.v self.prevmercy
push.v self.prevmercy
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [56]

:[16]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.i
pushi.e -1
pop.v.i local.a
pushi.e 0
pop.v.i local.maxv
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[17]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushloc.v local.i
pop.v.v local.a
b [27]

:[22]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pushi.e 5
cmp.i.v GT
bf [24]

:[23]
pushi.e 0
pop.v.i local.i

:[24]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v local.maxv
push.e 1
add.i.v
pop.v.v local.maxv

:[26]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [17]

:[27]
popz.i
push.v self.vinebgcount
pushi.e 1
cmp.i.v LT
bf [29]

:[28]
pushloc.v local.maxv
pop.v.v self.maxvinecount

:[29]
pushi.e 1
pop.v.i local.multicut
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.c
pushi.e 0
pop.v.i local.d
pushi.e 0
pop.v.i local.maxvines

:[30]
pushloc.v local.d
pushi.e 0
cmp.i.v EQ
bf [56]

:[31]
push.v self.x
push.v self.x
cmp.v.v EQ
bf [41]

:[32]
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [38]

:[33]
push.i 171508
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.c
conv.v.i
pop.v.v [array]self.partvisible
pushi.e 688
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine
push.v self.x
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.c
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x1
push.v self.x
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushloc.v local.c
pushi.e 8
mul.i.v
add.v.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x2
push.v self.y
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partyoff
add.v.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y1
pushi.e -400
push.v self.vine
pushi.e -9
pop.v.i [stacktop]self.y2
push.v self.depth
pushi.e 1
add.i.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.depth
pushloc.v local.c
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.vineid
pushi.e 690
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.c
pushi.e 5
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vfx
push.v self.depth
pushi.e 5
sub.i.v
push.v self.vfx
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 167
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [35]

:[34]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[35]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.c
push.v local.maxvines
push.e 1
add.i.v
pop.v.v local.maxvines
push.v local.a
push.e 1
sub.i.v
pop.v.v local.a
pushloc.v local.maxvines
pushloc.v local.multicut
cmp.v.v GTE
bf [37]

:[36]
pushi.e 1
pop.v.i local.d

:[37]
push.v 697.vinebgcount
pushi.e 1
sub.i.v
pop.v.v 697.vinebgcount
b [40]

:[38]
push.v local.c
push.e 1
add.i.v
pop.v.v local.c
pushloc.v local.c
pushi.e 5
cmp.i.v GT
bf [40]

:[39]
pushi.e 0
pop.v.i local.c

:[40]
b [49]

:[41]
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v EQ
bf [47]

:[42]
push.i 171509
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.c
conv.v.i
pop.v.v [array]self.partweakened
pushi.e 690
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.c
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.c
pushi.e 5
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vfx
push.v self.depth
pushi.e 5
sub.i.v
push.v self.vfx
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 167
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [44]

:[43]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[44]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.c
push.v local.maxvines
push.e 1
add.i.v
pop.v.v local.maxvines
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
pushloc.v local.maxvines
pushloc.v local.multicut
cmp.v.v GTE
bf [46]

:[45]
pushi.e 1
pop.v.i local.d

:[46]
b [49]

:[47]
push.v local.c
push.e 1
add.i.v
pop.v.v local.c
pushloc.v local.c
pushi.e 5
cmp.i.v GT
bf [49]

:[48]
pushi.e 0
pop.v.i local.c

:[49]
pushi.e 0
pop.v.i local.max_break
pushi.e 0
pop.v.i local.i
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [53]

:[50]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i local.max_break

:[52]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [50]

:[53]
popz.i
pushloc.v local.max_break
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i local.d

:[55]
b [30]

:[56]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [15]

:[57]
popz.i
push.v 697.vinebgcount
pushi.e -2
cmp.i.v GT
bf [59]

:[58]
pushi.e 691
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [66]

:[61]
pushi.e 0
pop.v.i local.i

:[62]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [66]

:[63]
pushi.e 697
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushloc.v local.i
pop.v.v 697.vineid
pushi.e 689
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine

:[65]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [62]

:[66]
pushi.e 1
pop.v.i self.weakentimer
pushi.e 10
pop.v.i self.weakenshakeamount

:[67]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [end]

:[68]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pop.v.v self.prevmercy

:[end]