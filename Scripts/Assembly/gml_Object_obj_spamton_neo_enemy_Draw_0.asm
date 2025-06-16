.localvar 2 arguments
.localvar 26271 hidebgvines 13391
.localvar 26272 bgvinecount 13392
.localvar 11611 ii 13393
.localvar 26273 fgvinecount 13394
.localvar 107 i 13395
.localvar 26274 weakenshakeamount2 13396
.localvar 10437 _n 13397
.localvar 26276 eyeshine 13399
.localvar 26278 flyx 13401
.localvar 25575 shard 13403
.localvar 26280 fastshot 13404
.localvar 26281 shakebuster 13405
.localvar 26214 smokey 13406
.localvar 26283 fallen 13407
.localvar 26284 shakevar 13408
.localvar 26285 expand 13409

:[0]
push.v self.partmode
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
pushi.e 9
pop.v.i self.partmode

:[2]
pushbltn.v builtin.room
pushi.e 187
cmp.i.v NEQ
bf [8]

:[3]
pushi.e 624
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.v 697.image_alpha
pushi.e 1
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v 697.image_alpha
push.d 0.1
add.d.v
pop.v.v 697.image_alpha

:[8]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[10]
pushi.e 0
pop.v.i local.hidebgvines
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 89
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i local.hidebgvines

:[15]
pushi.e 0
pop.v.i local.bgvinecount
pushi.e 0
pop.v.i local.ii

:[16]
pushloc.v local.ii
pushi.e 18
cmp.i.v LT
bf [34]

:[17]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partvisible_back
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v local.bgvinecount
push.e 1
add.i.v
pop.v.v local.bgvinecount

:[19]
pushloc.v local.hidebgvines
pushi.e 0
cmp.i.v EQ
bf [33]

:[20]
push.v self.partmode
pushi.e 34
cmp.i.v NEQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.heartattackoffsetx

:[22]
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
call.i make_colour_rgb(argc=3)
call.i draw_set_color(argc=1)
popz.v
push.i 171504
setowner.e
pushi.e -1
pushloc.v local.ii
conv.v.i
dup.i 1
push.v [array]self.partsiner_back
push.d 0.5
add.d.v
pop.i.v [array]self.partsiner_back
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[23]
push.v 698.type
push.d 8.5
cmp.d.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[27]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partvisible_back
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partx_back
add.v.v
push.v self.heartattackoffsetx
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partxoff_back
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.party_back
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partyoff_back
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partx_back
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partxoff_back
add.v.v
push.v self.heartattackoffsetx
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partsiner_back
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i draw_line_width(argc=5)
popz.v

:[29]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.violentendflash
pushi.e 0
cmp.i.v GT
bf [33]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.violentendflash
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partvisible_back
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partx_back
add.v.v
push.v self.heartattackoffsetx
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partxoff_back
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.party_back
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partyoff_back
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partx_back
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partxoff_back
add.v.v
push.v self.heartattackoffsetx
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.partsiner_back
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i draw_line_width(argc=5)
popz.v

:[32]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[33]
push.v local.ii
pushi.e 1
add.i.v
pop.v.v local.ii
b [16]

:[34]
push.v self.weakentimer
pushi.e 0
cmp.i.v GT
bf [37]

:[35]
push.v self.weakentimer
push.e 1
add.i.v
pop.v.v self.weakentimer
push.v self.weakenshakeamount
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.v self.weakenshakeamount
push.d 0.5
sub.d.v
pop.v.v self.weakenshakeamount

:[37]
push.v self.lastwirecon
pushi.e 0
cmp.i.v EQ
bt [39]

:[38]
push.v self.lastwirecon
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [48]

:[41]
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
call.i make_colour_rgb(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [43]

:[42]
push.v 698.type
push.d 8.5
cmp.d.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[46]
pushi.e 1
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushi.e 32
add.i.v
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushi.e 20
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.8
mul.d.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.violentendflash
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.violentendflash
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushi.e 32
add.i.v
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushi.e 20
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.8
mul.d.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[48]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.lastwirecon
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
pop.v.i self.lastwirecon

:[53]
push.v self.lastwirecon
pushi.e 1
cmp.i.v EQ
bf [56]

:[54]
push.v self.lastwiretimer
push.e 1
add.i.v
pop.v.v self.lastwiretimer
push.v self.lastwiretimer
pushi.e 30
cmp.i.v EQ
bf [56]

:[55]
pushi.e 2
pop.v.i self.lastwirecon

:[56]
push.v self.lastwirecon
pushi.e 1
cmp.i.v EQ
bt [58]

:[57]
push.v self.lastwirecon
pushi.e 2
cmp.i.v EQ
b [59]

:[58]
push.e 1

:[59]
bf [61]

:[60]
push.v self.lastwiretimer
pushi.e 30
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
push.v self.lastwiretimer
pushi.e 30
conv.i.d
div.d.v
add.v.i
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushi.e 32
add.i.v
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushi.e 20
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.8
mul.d.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[61]
pushi.e 0
pop.v.i local.fgvinecount
pushi.e 0
pop.v.i local.i

:[62]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [91]

:[63]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.weakenshakeamount2
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.weakenshakeamount
push.v self.weakenshakeamount
call.i random(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pop.v.v local.weakenshakeamount2

:[65]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[67]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [69]

:[68]
push.v 698.type
push.d 8.5
cmp.d.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[72]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 2
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushloc.v local.i
pushi.e 8
mul.i.v
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v local.fgvinecount
push.e 1
add.i.v
pop.v.v local.fgvinecount

:[74]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.v self.weakentimer
pushi.e 11
cmp.i.v LT
b [77]

:[76]
push.e 0

:[77]
bf [81]

:[78]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 11
push.v self.weakentimer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 624
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [80]

:[79]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[80]
pushi.e 2
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushloc.v local.i
pushi.e 8
mul.i.v
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[81]
push.v self.violentendflash
pushi.e 0
cmp.i.v GT
bf [85]

:[82]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.violentendflash
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 624
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [84]

:[83]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[84]
pushi.e 2
conv.i.v
pushi.e -400
conv.i.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushloc.v local.i
pushi.e 8
mul.i.v
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushloc.v local.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.weakenshakeamount2
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[85]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v self.weakentimer
pushi.e 10
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.i 171509
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partweakened

:[90]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [62]

:[91]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [96]

:[92]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 89
cmp.i.v GT
bf [96]

:[93]
pushloc.v local.bgvinecount
pushi.e 0
cmp.i.v GT
bf [96]

:[94]
pushi.e 689
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [96]

:[95]
pushi.e 688
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [97]

:[96]
push.e 0

:[97]
bf [103]

:[98]
pushi.e 0
pop.v.i local.i

:[99]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [103]

:[100]
pushi.e 697
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
pushloc.v local.i
pop.v.v 697.vineid
pushi.e 689
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine

:[102]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [99]

:[103]
push.v self.specialcon
pushi.e 1
cmp.i.v EQ
bf [115]

:[104]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
pushi.e 0
pop.v.i local.i

:[105]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [107]

:[106]
push.i 171262
setowner.e
push.d 0.07
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.05
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.03
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [105]

:[107]
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
pushi.e 2
mod.i.v
pop.v.v self.flameframe
push.v self.specialcontimer
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.flamealpha
push.v self.flamealpha
push.d 0.9
cmp.d.v GTE
bf [109]

:[108]
push.d 0.9
pop.v.d self.flamealpha

:[109]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [112]

:[110]
pushi.e 1
push.v self.specialcontimer
pushi.e 60
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha
push.v self.flamealpha
pushi.e 0
cmp.i.v LT
bf [112]

:[111]
pushi.e 0
pop.v.i self.flamealpha

:[112]
push.v self.specialcontimer
pushi.e 60
cmp.i.v GTE
bf [114]

:[113]
pushi.e 12
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[114]
push.v self.flamealpha
push.i 16711680
conv.i.v
pushi.e 0
conv.i.v
push.d 2.8
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
add.v.d
pushi.e -2
conv.i.v
push.v self.y
pushi.e 177
add.i.v
push.v self.x
pushi.e 75
add.i.v
pushi.e 10
push.v self.flameframe
add.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
push.d 1.4
div.d.v
push.i 8421376
conv.i.v
pushi.e 0
conv.i.v
push.d 2.8
conv.d.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 177
add.i.v
push.v self.x
pushi.e 75
add.i.v
pushi.e 11
push.v self.flameframe
sub.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[115]
push.v self.shocker
pushi.e 1
push.v self.f
mul.v.i
sub.v.v
pop.v.v self.shocker
pushi.e 0
pop.v.i local.i

:[116]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [724]

:[117]
push.v self.partmode
pushi.e 20
cmp.i.v LT
bf [256]

:[118]
push.v self.partmode
pushi.e 0
cmp.i.v EQ
bf [129]

:[119]
push.i 171507
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partsiner
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [123]

:[120]
push.i 171262
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 30
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e -10
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 10
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v self.dead
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[122]
b [129]

:[123]
push.i 171262
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [125]

:[124]
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[125]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [127]

:[126]
push.i 167985
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx

:[127]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [129]

:[128]
push.i 165821
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party

:[129]
push.v self.partmode
pushi.e 1
cmp.i.v EQ
bt [132]

:[130]
push.v self.partmode
pushi.e 3
cmp.i.v EQ
bt [132]

:[131]
push.v self.partmode
pushi.e 5
cmp.i.v GTE
b [133]

:[132]
push.e 1

:[133]
bf [215]

:[134]
push.v self.partmode
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.v self.aimmode
pushi.e 0
cmp.i.v NEQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 0
pop.v.i self.aimmode

:[139]
push.v self.partmode
pushi.e 3
cmp.i.v EQ
bt [144]

:[140]
push.v self.partmode
pushi.e 9
cmp.i.v GTE
bf [142]

:[141]
push.v self.partmode
pushi.e 13
cmp.i.v LTE
b [143]

:[142]
push.e 0

:[143]
b [145]

:[144]
push.e 1

:[145]
bf [147]

:[146]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [171]

:[149]
push.v self.aimmode
pushi.e 2
cmp.i.v EQ
bf [152]

:[150]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [152]

:[151]
push.v self.partmode
pushi.e 3
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [155]

:[154]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
add.v.v
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.armaim
b [157]

:[155]
push.v self.aimmode
pushi.e 1
cmp.i.v NEQ
bf [157]

:[156]
pushi.e -80
pop.v.i self.armaim

:[157]
push.v self.partmode
pushi.e 10
cmp.i.v LT
bf [159]

:[158]
push.i 171262
setowner.e
push.d 0.25
push.v self.f
mul.v.d
push.v self.armaim
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[159]
push.v self.partmode
pushi.e 9
cmp.i.v LT
bf [164]

:[160]
push.i 171306
setowner.e
push.v self.partmode
pushi.e 3
cmp.i.v EQ
bf [162]

:[161]
pushi.e 1
conv.i.v
b [163]

:[162]
pushi.e 3
conv.i.v

:[163]
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[164]
push.v self.partmode
pushi.e 12
cmp.i.v EQ
bf [166]

:[165]
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[166]
push.v self.partmode
pushi.e 10
cmp.i.v GTE
bf [170]

:[167]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
push.v self.armaim
cmp.v.v EQ
bf [169]

:[168]
push.i 171262
setowner.e
push.v self.armaim
pushi.e 2
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
b [170]

:[169]
push.i 171262
setowner.e
push.v self.armaim
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[170]
b [189]

:[171]
push.v self.partmode
pushi.e 6
cmp.i.v GTE
bf [174]

:[172]
push.v self.partmode
pushi.e 11
cmp.i.v LT
bf [174]

:[173]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [182]

:[176]
push.i 171262
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e -160
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 2
cmp.i.v NEQ
bf [178]

:[177]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
pushi.e -90
cmp.i.v LTE
b [179]

:[178]
push.e 0

:[179]
bf [181]

:[180]
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[181]
b [189]

:[182]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [188]

:[183]
push.v self.partmode
pushi.e 5
cmp.i.v EQ
bt [185]

:[184]
push.v self.partmode
pushi.e 1
cmp.i.v EQ
b [186]

:[185]
push.e 1

:[186]
bf [188]

:[187]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[188]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
pushi.e 1
pushloc.v local.i
pushi.e 5
conv.i.d
div.d.v
add.v.i
push.v self.f
mul.v.v
add.v.v
pop.i.v [array]self.partsiner
push.i 171262
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[189]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [215]

:[190]
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.i 171262
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 10
push.v self.f
mul.v.i
sub.v.v
pop.i.v [array]self.partrot
push.v self.partmode
pushi.e 5
cmp.i.v EQ
bt [193]

:[191]
push.v self.partmode
pushi.e 8
cmp.i.v EQ
bt [193]

:[192]
push.v self.partmode
pushi.e 9
cmp.i.v EQ
b [194]

:[193]
push.e 1

:[194]
bf [196]

:[195]
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 2
div.i.v
pop.i.v [array]self.partrot
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 10
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
b [211]

:[196]
push.v self.partmode
pushi.e 6
cmp.i.v EQ
bt [198]

:[197]
push.v self.partmode
pushi.e 7
cmp.i.v EQ
b [199]

:[198]
push.e 1

:[199]
bf [206]

:[200]
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 2
div.i.v
pop.i.v [array]self.partrot
push.v self.partmode
pushi.e 6
cmp.i.v GT
bt [202]

:[201]
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e -120
cmp.i.v LTE
b [203]

:[202]
push.e 1

:[203]
bf [205]

:[204]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[205]
b [211]

:[206]
push.v self.partmode
pushi.e 11
cmp.i.v EQ
bf [208]

:[207]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.2
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe
b [211]

:[208]
push.v self.partmode
pushi.e 12
cmp.i.v EQ
bf [210]

:[209]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.3
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe
b [211]

:[210]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.05
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe

:[211]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 3
cmp.i.v GTE
bf [213]

:[212]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[213]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 2
cmp.i.v GTE
bf [215]

:[214]
push.i 171262
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 20
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partrot

:[215]
push.v self.partmode
pushi.e 2
cmp.i.v EQ
bf [220]

:[216]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
pushi.e 1
pushloc.v local.i
pushi.e 5
conv.i.d
div.d.v
add.v.i
push.v self.f
mul.v.v
add.v.v
pop.i.v [array]self.partsiner
push.i 167985
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i sin(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i cos(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v self.shocker
pushi.e 0
cmp.i.v LT
bf [220]

:[217]
push.i 171262
setowner.e
pushi.e 60
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [220]

:[218]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partframe
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 3
cmp.i.v GTE
bf [220]

:[219]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[220]
push.v self.partmode
pushi.e 4
cmp.i.v EQ
bf [236]

:[221]
push.i 171624
setowner.e
pushi.e -43
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e -180
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e -20
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e -31
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e -60
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e -61
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e -56
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot
push.v self.shotanimtimer
push.d 0.125
push.v self.f
mul.v.d
cmp.v.v EQ
bf [223]

:[222]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [227]

:[225]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [227]

:[226]
pushi.e 0
pop.v.i self.aimmode

:[227]
push.v self.shotanimtimer
push.d 0.125
push.v self.f
mul.v.d
add.v.v
pop.v.v self.shotanimtimer
push.v self.shotanimtimer
pushi.e 13
cmp.i.v LT
bf [229]

:[228]
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171262
setowner.e
push.d 0.3
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
pushi.e 0
pop.v.i self.lerper

:[229]
push.v self.shotanimtimer
pushi.e 13
cmp.i.v GTE
bf [234]

:[230]
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.v self.lerper
push.d 0.015
push.v self.f
mul.v.d
add.v.v
pop.v.v self.lerper
pushloc.v local.i
pushi.e 1
cmp.i.v NEQ
bf [232]

:[231]
push.i 171262
setowner.e
push.v self.lerper
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[232]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
push.v self.lerper
push.v self.armaim
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[234]
push.v self.shotanimtimer
pushi.e 24
cmp.i.v GTE
bf [236]

:[235]
pushi.e 0
pop.v.i self.shotanimtimer
pushi.e 3
pop.v.i self.partmode

:[236]
push.v self.partmode
pushi.e 6
cmp.i.v EQ
bf [238]

:[237]
pushi.e 0
pop.v.i self.shotanimtimer

:[238]
push.v self.partmode
pushi.e 7
cmp.i.v EQ
bf [241]

:[239]
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.partrot
push.v self.shotanimtimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
add.v.v
pop.i.v [array]self.partrot
push.v self.shotanimtimer
push.d 0.2
push.v self.f
mul.v.d
add.v.v
pop.v.v self.shotanimtimer
push.v self.shotanimtimer
pushi.e 60
cmp.i.v GT
bf [241]

:[240]
pushi.e 6
pop.v.i self.partmode

:[241]
push.v self.partmode
pushi.e 20
cmp.i.v EQ
bf [243]

:[242]
pushi.e -96
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.partrot
pushi.e -143
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.partrot
pushi.e -81
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.partrot
pushi.e -1
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.partrot
pushi.e -67
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 4
pop.v.v [array]self.partrot
pushi.e -45
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171262
setowner.e
pushi.e 127
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 6
pop.v.v [array]self.partrot
pushi.e -43
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 7
pop.v.v [array]self.partrot

:[243]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [256]

:[244]
push.v self.partmode
pushi.e 15
cmp.i.v GTE
bf [246]

:[245]
push.v self.partmode
pushi.e 18
cmp.i.v LTE
b [247]

:[246]
push.e 0

:[247]
bf [255]

:[248]
push.v self.partmode
pushi.e 15
cmp.i.v EQ
bf [250]

:[249]
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
push.d 0.5
conv.d.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize

:[250]
push.v self.partmode
pushi.e 16
cmp.i.v EQ
bf [252]

:[251]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize

:[252]
push.v self.partmode
pushi.e 17
cmp.i.v EQ
bf [254]

:[253]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
push.d 1.5
conv.d.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.partrot
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pop.i.v [array]self.partrot

:[254]
b [256]

:[255]
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize

:[256]
push.v self.partmode
pushi.e 21
cmp.i.v GTE
bf [258]

:[257]
push.v self.partmode
pushi.e 30
cmp.i.v LTE
b [259]

:[258]
push.e 0

:[259]
bf [279]

:[260]
push.v self.partmode
pushi.e 21
cmp.i.v EQ
bt [264]

:[261]
push.v self.partmode
pushi.e 23
cmp.i.v EQ
bt [264]

:[262]
push.v self.partmode
pushi.e 24
cmp.i.v EQ
bt [264]

:[263]
push.v self.partmode
pushi.e 25
cmp.i.v EQ
b [265]

:[264]
push.e 1

:[265]
bf [273]

:[266]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
push.d 0.1
add.d.v
pop.i.v [array]self.partsiner
push.i 167985
setowner.e
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.i 171624
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushloc.v local.i
pushi.e 8
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.1
sub.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.3
add.d.v
call.i sin(argc=1)
neg.v
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.1
add.d.v
call.i sin(argc=1)
neg.v
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171262
setowner.e
push.d 0.5
conv.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.partrot
pushi.e 2
add.i.v
pop.i.v [array]self.partrot
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [273]

:[267]
push.v self.partmode
pushi.e 23
cmp.i.v EQ
bf [269]

:[268]
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
push.d 0.5
conv.d.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize

:[269]
push.v self.partmode
pushi.e 24
cmp.i.v EQ
bf [271]

:[270]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize

:[271]
push.v self.partmode
pushi.e 25
cmp.i.v EQ
bf [273]

:[272]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
push.d 1.5
conv.d.v
push.v self.headsize
call.i lerp(argc=3)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e -15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 167985
setowner.e
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party

:[273]
push.v self.partmode
pushi.e 22
cmp.i.v EQ
bf [277]

:[274]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171262
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 171507
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.partsiner
push.d 0.1
add.d.v
pop.i.v [array]self.partsiner
pushi.e -1
pushi.e 0
push.v [array]self.partsiner
pushi.e 5
cmp.i.v GTE
bf [277]

:[275]
push.i 167985
setowner.e
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
pushloc.v local.i
pushi.e 8
cmp.i.v EQ
bf [277]

:[276]
push.i 171507
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partsiner

:[277]
push.v self.partmode
pushi.e 27
cmp.i.v EQ
bf [279]

:[278]
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171624
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.idealrot
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partframe
push.i 171262
setowner.e
push.d 0.5
conv.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[279]
push.v self.partmode
pushi.e 30
cmp.i.v GTE
bf [315]

:[280]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [286]

:[281]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [283]

:[282]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
b [284]

:[283]
push.e 0

:[284]
bf [286]

:[285]
push.v self.partmode
push.e 1
add.i.v
pop.v.v self.partmode

:[286]
push.v self.partmode
pushi.e 30
cmp.i.v EQ
bf [302]

:[287]
pushi.e 0
pop.v.i self.headsize
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [293]

:[288]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [290]

:[289]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
b [291]

:[290]
push.e 0

:[291]
bf [293]

:[292]
pushi.e 1
pop.v.i self.shake_head

:[293]
push.i 171269
setowner.e
pushi.e 1984
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite
pushi.e -1
pushi.e 5
push.v [array]self.partframe
pushi.e 0
cmp.i.v EQ
bf [295]

:[294]
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe

:[295]
push.i 171269
setowner.e
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partsprite
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
pushi.e 1
add.i.v
pop.i.v [array]self.partsiner
push.v self.shake_head
pushi.e 0
cmp.i.v EQ
bf [297]

:[296]
push.i 165821
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.i 171624
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.idealrot
b [302]

:[297]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [302]

:[298]
push.v self.shake_head
pushi.e 1
cmp.i.v EQ
bf [300]

:[299]
push.i 171306
setowner.e
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.partframe
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.partframe
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[300]
push.i 171262
setowner.e
push.v self.shake_head
pushi.e 2
mul.i.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 165821
setowner.e
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.party
push.i 167985
setowner.e
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.partx
push.v self.shake_head
push.e 1
add.i.v
pop.v.v self.shake_head
push.v self.shake_head
pushi.e 6
cmp.i.v GTE
bf [302]

:[301]
pushi.e 0
pop.v.i self.shake_head
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot

:[302]
push.v self.partmode
pushi.e 31
cmp.i.v EQ
bf [304]

:[303]
push.v self.partmode
pushi.e 34
cmp.i.v LT
b [305]

:[304]
push.e 0

:[305]
bf [310]

:[306]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [310]

:[307]
pushi.e 139
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i local._n
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [309]

:[308]
pushi.e 353
conv.i.v
push.v self.y
pushi.e -1
pushi.e 5
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partyoff
add.v.v
pushloc.v local._n
pushi.e 8
mul.i.v
push.v self.x
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partx
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partxoff
push.v self.facing
mul.v.v
add.v.v
push.v self.lastxoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.eyeshine
pushi.e 1984
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e -2
pushloc.v local._n
pushi.e 5
conv.i.d
div.d.v
sub.v.i
pushloc.v local.eyeshine
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 2
pushloc.v local._n
pushi.e 5
conv.i.d
div.d.v
add.v.i
pushloc.v local.eyeshine
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.xrate
pushi.e 0
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.yrate
pushi.e 1
pushloc.v local._n
add.v.i
pushloc.v local.eyeshine
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v local._n
push.d 0.2
add.d.v
pop.v.v local._n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [308]

:[309]
popz.i
pushi.e -1
pushi.e 5
push.v [array]self.partrot
push.v self.facing
mul.v.v
pushloc.v local.eyeshine
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1984
conv.i.v
push.v self.y
pushi.e -1
pushi.e 5
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 5
push.v [array]self.partx
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partxoff
push.v self.facing
mul.v.v
add.v.v
push.v self.lastxoff
add.v.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.eyeshine
pushi.e -2
pushloc.v local.eyeshine
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 32
pop.v.i self.partmode

:[310]
push.v self.partmode
pushi.e 33
cmp.i.v EQ
bf [315]

:[311]
pushi.e 129
pushenv [314]

:[312]
push.v self.sprite_index
pushi.e 1984
cmp.i.v EQ
bf [314]

:[313]
call.i instance_destroy(argc=0)
popz.v

:[314]
popenv [312]
push.i 171269
setowner.e
pushi.e 1976
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partsprite
pushi.e 1977
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partsprite
pushi.e 1978
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partsprite
pushi.e 1979
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.partsprite
pushi.e 1981
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.partsprite
pushi.e 3322
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite
pushi.e 1987
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.partsprite
pushi.e 1986
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.partsprite
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
pushi.e 0
pop.v.i self.partmode
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[315]
push.v self.partmode
pushi.e 34
cmp.i.v EQ
bf [423]

:[316]
pushi.e 0
pop.v.i self.hearttype
push.v 697.difficulty
pushi.e 1
cmp.i.v EQ
bf [318]

:[317]
pushi.e 1
pop.v.i self.hearttype

:[318]
push.v 697.difficulty
pushi.e 2
cmp.i.v EQ
bf [320]

:[319]
pushi.e 2
pop.v.i self.hearttype

:[320]
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [322]

:[321]
pushi.e 3
pop.v.i self.hearttype

:[322]
push.v 697.difficulty
pushi.e 4
cmp.i.v EQ
bf [324]

:[323]
pushi.e 4
pop.v.i self.hearttype

:[324]
pushi.e 0
pop.v.i local.flyx
push.v self.heart_release_con
pushi.e 1
cmp.i.v EQ
bf [326]

:[325]
pushi.e -20
pop.v.i local.flyx

:[326]
push.v self.heart_release_con
pushi.e 0
cmp.i.v EQ
bf [328]

:[327]
pushi.e 0
pop.v.i local.flyx

:[328]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [416]

:[329]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.heart_release_con
pushi.e 2
cmp.i.v GTE
bf [331]

:[330]
pushi.e 0
pop.v.i self.heart_release_con

:[331]
push.v self.heart_release_con
pushi.e 0
cmp.i.v EQ
bf [341]

:[332]
push.i 171098
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e -50
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e -50
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot
push.v self.hearttype
pushi.e 2
cmp.i.v GT
bf [337]

:[333]
pushi.e 635
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v LT
bf [337]

:[334]
push.v self.makehearttimer
pushi.e 1
cmp.i.v LT
bf [337]

:[335]
pushglb.v global.turntimer
pushi.e 100
cmp.i.v GT
bf [337]

:[336]
push.v self.makeheartinit
pushi.e 1
cmp.i.v EQ
b [338]

:[337]
push.e 0

:[338]
bf [341]

:[339]
pushi.e 80
pop.v.i self.makehearttimer
pushi.e 1
pop.v.i self.makeheart
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=2)
pop.v.v self.makehearttype
push.v self.makeheartalt
pushi.e 0
cmp.i.v NEQ
bf [341]

:[340]
push.v self.makeheartalt
pop.v.v self.makehearttype
pushi.e 120
pop.v.i self.makehearttimer

:[341]
push.v self.heart_release_con
pushi.e 1
cmp.i.v EQ
bf [343]

:[342]
push.i 171098
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealx
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealx
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e -100
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot

:[343]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v LT
bf [345]

:[344]
push.i 171098
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot

:[345]
push.v self.makehearttimer
pushi.e 0
cmp.i.v GT
bf [347]

:[346]
push.v self.makehearttimer
push.e 1
sub.i.v
pop.v.v self.makehearttimer

:[347]
push.v self.makeheart
conv.v.b
bf [416]

:[348]
push.v self.makeheartinit
pushi.e 0
cmp.i.v EQ
bf [350]

:[349]
pushi.e 1
pop.v.i self.makeheartinit
pushi.e 0
pop.v.i self.makehearttype

:[350]
push.v self.hearttype
pushi.e 0
cmp.i.v EQ
bf [355]

:[351]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 0
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
push.v self.hellmode
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.special
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [353]

:[352]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [354]

:[353]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[354]
b [412]

:[355]
push.v self.hearttype
pushi.e 1
cmp.i.v EQ
bf [366]

:[356]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 0
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
push.v self.hellmode
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.special
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [358]

:[357]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [359]

:[358]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[359]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 1
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [361]

:[360]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [362]

:[361]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[362]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 1
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [364]

:[363]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [365]

:[364]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[365]
b [412]

:[366]
push.v self.hearttype
pushi.e 2
cmp.i.v EQ
bf [371]

:[367]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 0
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.bighearttype
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
push.v self.hellmode
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.special
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [369]

:[368]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [370]

:[369]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[370]
b [412]

:[371]
push.v self.hearttype
pushi.e 3
cmp.i.v EQ
bf [393]

:[372]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bf [376]

:[373]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 1
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [375]

:[374]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [376]

:[375]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[376]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bt [378]

:[377]
push.v self.makehearttype
pushi.e 3
cmp.i.v EQ
b [379]

:[378]
push.e 1

:[379]
bf [384]

:[380]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [382]

:[381]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [383]

:[382]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[383]
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.altbiter

:[384]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bt [386]

:[385]
push.v self.makehearttype
pushi.e 4
cmp.i.v EQ
b [387]

:[386]
push.e 1

:[387]
bf [392]

:[388]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [390]

:[389]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [391]

:[390]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[391]
pushi.e 4
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.altbiter

:[392]
b [412]

:[393]
push.v self.hearttype
pushi.e 4
cmp.i.v EQ
bf [412]

:[394]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bf [398]

:[395]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 1
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [397]

:[396]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [398]

:[397]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[398]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bt [400]

:[399]
push.v self.makehearttype
pushi.e 3
cmp.i.v EQ
b [401]

:[400]
push.e 1

:[401]
bf [405]

:[402]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 4
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [404]

:[403]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [405]

:[404]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[405]
push.v self.makehearttype
pushi.e 0
cmp.i.v EQ
bt [407]

:[406]
push.v self.makehearttype
pushi.e 4
cmp.i.v EQ
b [408]

:[407]
push.e 1

:[408]
bf [412]

:[409]
pushi.e 635
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wireheart
push.v self.id
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.boss
push.v self.x
pushi.e 10
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossx
push.v self.y
pushi.e 80
add.i.v
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.bossy
pushi.e 4
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.wireheart
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [411]

:[410]
push.v 698.target
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.8
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage
b [412]

:[411]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.d 0.6
mul.d.v
call.i floor(argc=1)
push.v self.wireheart
pushi.e -9
pop.v.v [stacktop]self.damage

:[412]
pushi.e 0
pop.v.i local._n

:[413]
pushloc.v local._n
pushi.e 6
cmp.i.v LT
bf [415]

:[414]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.shard
pushi.e 1743
pushloc.v local.shard
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pushloc.v local.shard
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 140
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.i
pushloc.v local.shard
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
pushloc.v local.shard
pushi.e -9
pop.v.i [stacktop]self.gravity
push.d 0.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushloc.v local.shard
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushloc.v local.shard
pushi.e -9
push.v [stacktop]self.image_xscale
pushloc.v local.shard
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
b [413]

:[415]
pushi.e 0
pop.v.i self.makeheart

:[416]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v LT
bf [418]

:[417]
push.i 171262
setowner.e
push.d 0.14
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.1
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.06
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.d 0.06
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
push.v self.heartattackoffsetx
call.i lerp(argc=3)
pop.v.v self.heartattackoffsetx
push.d 0.1
conv.d.v
push.v self.xstart
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
b [423]

:[418]
push.i 171262
setowner.e
push.d 0.14
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.1
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealx
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
pushloc.v local.flyx
add.v.v
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.06
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v self.heart_release_con
pushi.e 0
cmp.i.v EQ
bf [420]

:[419]
push.d 0.01
push.v self.f
mul.v.d
pushi.e -10
conv.i.v
push.v self.heartattackoffsetx
call.i lerp(argc=3)
pop.v.v self.heartattackoffsetx

:[420]
push.v self.heart_release_con
pushi.e 1
cmp.i.v EQ
bf [422]

:[421]
push.d 0.01
push.v self.f
mul.v.d
pushi.e -60
conv.i.v
push.v self.heartattackoffsetx
call.i lerp(argc=3)
pop.v.v self.heartattackoffsetx

:[422]
push.d 0.1
conv.d.v
push.v self.xstart
pushi.e 60
add.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[423]
push.v self.partmode
pushi.e 35
cmp.i.v EQ
bf [457]

:[424]
pushi.e 0
pop.v.i local.flyx
push.v self.dance_con
pushi.e 1
cmp.i.v EQ
bf [426]

:[425]
pushi.e 0
pop.v.i local.flyx

:[426]
push.v self.dance_con
pushi.e 0
cmp.i.v EQ
bf [428]

:[427]
pushi.e 0
pop.v.i local.flyx

:[428]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [437]

:[429]
push.v self.siner
push.d 1.3
add.d.v
pop.v.v self.siner
push.v self.dance_timer
push.e 1
add.i.v
pop.v.v self.dance_timer
push.v self.dance_timer
pushi.e 9
cmp.i.v GT
bf [431]

:[430]
pushi.e 0
pop.v.i self.dance_timer
push.v self.dance_con
push.e 1
add.i.v
pop.v.v self.dance_con

:[431]
push.v self.dance_con
pushi.e 2
cmp.i.v GTE
bf [433]

:[432]
pushi.e 0
pop.v.i self.dance_con

:[433]
push.v self.dance_con
pushi.e 0
cmp.i.v EQ
bf [435]

:[434]
push.i 171098
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e -20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e -120
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e -230
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot

:[435]
push.v self.dance_con
pushi.e 1
cmp.i.v EQ
bf [437]

:[436]
push.i 171098
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealx
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealx
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealx
push.i 171624
setowner.e
pushi.e -20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.idealrot
pushi.e -250
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.idealrot
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot
pushi.e -120
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.idealrot

:[437]
push.i 171262
setowner.e
push.d 0.14
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.1
push.v self.f
mul.v.d
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealx
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
pushloc.v local.flyx
add.v.v
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.06
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [456]

:[438]
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.i 171262
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 10
push.v self.f
mul.v.i
sub.v.v
pop.i.v [array]self.partrot
push.v self.partmode
pushi.e 5
cmp.i.v EQ
bf [440]

:[439]
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 2
div.i.v
pop.i.v [array]self.partrot
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 10
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
b [452]

:[440]
push.v self.partmode
pushi.e 6
cmp.i.v EQ
bf [447]

:[441]
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 2
div.i.v
pop.i.v [array]self.partrot
push.v self.partmode
pushi.e 6
cmp.i.v GT
bt [443]

:[442]
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e -120
cmp.i.v LTE
b [444]

:[443]
push.e 1

:[444]
bf [446]

:[445]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[446]
b [452]

:[447]
push.v self.partmode
pushi.e 11
cmp.i.v EQ
bf [449]

:[448]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.2
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe
b [452]

:[449]
push.v self.partmode
pushi.e 12
cmp.i.v EQ
bf [451]

:[450]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.3
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe
b [452]

:[451]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
push.d 0.05
push.v self.f
mul.v.d
add.v.v
pop.i.v [array]self.partframe

:[452]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 3
cmp.i.v GTE
bf [454]

:[453]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[454]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 2
cmp.i.v GTE
bf [456]

:[455]
push.i 171262
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e 20
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partrot

:[456]
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pop.v.v self.y
push.d 0.1
conv.d.v
push.v self.xstart
pushi.e 60
add.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[457]
push.v self.partmode
pushi.e 36
cmp.i.v EQ
bf [511]

:[458]
pushi.e 1
pop.v.i local.fastshot
push.v self.shootydanceinit
pushi.e 0
cmp.i.v EQ
bf [460]

:[459]
pushi.e 1
pop.v.i self.shootydanceinit
push.v self.x
pop.v.v self.shootydancex
push.v self.y
pop.v.v self.shootydancey

:[460]
push.v self.endcon
pushi.e 0
cmp.i.v GT
bf [466]

:[461]
push.v self.dancealtcon
pushi.e 1
cmp.i.v EQ
bf [463]

:[462]
push.v self.siner
push.d 0.23
add.d.v
pop.v.v self.siner

:[463]
push.v self.dancealtcon
pushi.e 2
cmp.i.v EQ
bf [465]

:[464]
push.v self.siner
push.d 0.23
add.d.v
pop.v.v self.siner

:[465]
push.v self.xstart
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
add.v.v
pop.v.v self.y
b [467]

:[466]
push.v self.shootydancex
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.x
push.v self.shootydancey
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
add.v.v
pop.v.v self.y

:[467]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
push.v self.dance_timer
pushi.e 0
cmp.i.v EQ
bf [471]

:[468]
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [470]

:[469]
push.v 631.y
push.v 631.x
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
call.i point_direction(argc=4)
pop.v.v self.armangle

:[470]
push.i 171624
setowner.e
pushi.e -15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.idealrot

:[471]
pushloc.v local.i
pushi.e 1
cmp.i.v NEQ
bt [473]

:[472]
push.v self.endcon
pushi.e 0
cmp.i.v GT
b [474]

:[473]
push.e 1

:[474]
bf [476]

:[475]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
push.d 0.1
add.d.v
pop.i.v [array]self.partsiner
push.i 167985
setowner.e
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.i 171624
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushloc.v local.i
pushi.e 8
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.1
sub.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.3
add.d.v
call.i sin(argc=1)
neg.v
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.idealrot
pushi.e -1
pushi.e 2
push.v [array]self.partsiner
push.d 0.1
add.d.v
call.i sin(argc=1)
neg.v
pushi.e 60
mul.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.idealrot
push.i 171262
setowner.e
pushi.e -15
push.v self.head_recoil_amount
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pushi.e 150
mul.i.v
sub.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.d 0.03
conv.d.v
pushi.e 0
conv.i.v
push.v self.head_recoil_amount
call.i lerp(argc=3)
pop.v.v self.head_recoil_amount
push.i 171262
setowner.e
push.d 0.5
conv.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.idealrot
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[476]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [478]

:[477]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [479]

:[478]
push.e 0

:[479]
bf [502]

:[480]
push.v self.siner
push.d 1.3
add.d.v
pop.v.v self.siner
push.v self.dance_timer
push.e 1
add.i.v
pop.v.v self.dance_timer
push.v self.dance_timer
pushi.e 17
pushloc.v local.fastshot
pushi.e 10
mul.i.v
sub.v.i
cmp.v.v EQ
bt [482]

:[481]
push.v self.dance_timer
pushi.e 52
pushloc.v local.fastshot
pushi.e 10
mul.i.v
sub.v.i
cmp.v.v EQ
b [483]

:[482]
push.e 1

:[483]
bf [485]

:[484]
pushi.e 632
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self._type
pushi.e 131
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.chargeshot_sound
pushi.e 1
pop.v.i self.chargesfxtimer

:[485]
push.v self.dance_timer
pushi.e 42
pushloc.v local.fastshot
pushi.e 10
mul.i.v
sub.v.i
cmp.v.v EQ
bf [489]

:[486]
pushi.e 632
pushenv [488]

:[487]
call.i instance_destroy(argc=0)
popz.v

:[488]
popenv [487]
pushi.e 594
conv.i.v
push.v self.armendy
push.v self.armendx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.mytarget
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.armaim
pushi.e 360
add.i.v
pop.v.v self.armaim
pushi.e -170
pop.v.i self.head_recoil_amount
push.v self.chargeshot_sound
call.i gml_Script_snd_stop(argc=1)
popz.v
push.d 0.5
conv.d.v
push.d 0.6
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[489]
push.v self.dance_timer
pushi.e 84
pushloc.v local.fastshot
pushi.e 20
mul.i.v
sub.v.i
cmp.v.v EQ
bf [493]

:[490]
pushi.e 632
pushenv [492]

:[491]
call.i instance_destroy(argc=0)
popz.v

:[492]
popenv [491]
pushi.e 594
conv.i.v
push.v self.armendy
push.v self.armendx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.mytarget
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.armaim
pushi.e 360
sub.i.v
pop.v.v self.armaim
pushi.e -170
pop.v.i self.head_recoil_amount
push.v self.chargeshot_sound
call.i gml_Script_snd_stop(argc=1)
popz.v
push.d 0.5
conv.d.v
push.d 0.6
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[493]
push.v self.dance_timer
pushi.e 85
pushloc.v local.fastshot
pushi.e 20
mul.i.v
sub.v.i
cmp.v.v EQ
bf [495]

:[494]
pushi.e 3
pop.v.i self.dance_timer

:[495]
push.v self.chargesfxtimer
pushi.e 1
cmp.i.v EQ
bf [497]

:[496]
push.d 0.1
pop.v.d self.chargepitch
push.v self.chargepitch
push.v self.chargeshot_sound
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.chargeshot_sound
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 20
conv.i.v
push.d 0.8
conv.d.v
push.v self.chargeshot_sound
call.i gml_Script_snd_volume(argc=3)
popz.v

:[497]
push.v self.chargesfxtimer
pushi.e 0
cmp.i.v GT
bf [499]

:[498]
push.v self.chargesfxtimer
pushi.e 30
cmp.i.v LTE
b [500]

:[499]
push.e 0

:[500]
bf [502]

:[501]
push.v self.chargesfxtimer
push.e 1
add.i.v
pop.v.v self.chargesfxtimer
push.v self.chargepitch
push.d 0.03
add.d.v
pop.v.v self.chargepitch
push.v self.chargepitch
push.v self.chargeshot_sound
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[502]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [504]

:[503]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [505]

:[504]
push.e 0

:[505]
bf [511]

:[506]
pushi.e 0
pop.v.i local.shakebuster
pushi.e 632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [508]

:[507]
pushi.e -4
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.shakebuster

:[508]
push.d 0.12
conv.d.v
push.v self.armaim
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushloc.v local.shakebuster
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
pushi.e 632
pushenv [510]

:[509]
push.v 697.armendx
pop.v.v self.x
push.v 697.armendy
pop.v.v self.y

:[510]
popenv [509]

:[511]
push.v self.partmode
pushi.e 40
cmp.i.v EQ
bf [548]

:[512]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [514]

:[513]
push.v self.dontchangepose
pushi.e 0
cmp.i.v EQ
b [515]

:[514]
push.e 0

:[515]
bf [517]

:[516]
push.v self.shocktimer
push.e 1
add.i.v
pop.v.v self.shocktimer

:[517]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
pushi.e 1
pushloc.v local.i
pushi.e 5
conv.i.d
div.d.v
add.v.i
push.v self.f
mul.v.v
add.v.v
pop.i.v [array]self.partsiner
push.i 167985
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i sin(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i cos(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v self.shockthreshold
pushi.e 5
cmp.i.v LTE
bf [520]

:[518]
push.v self.hurttimer2
pushi.e 0
cmp.i.v EQ
bf [520]

:[519]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [521]

:[520]
push.e 0

:[521]
bt [526]

:[522]
push.v self.smokethreshold
pushi.e 1
cmp.i.v GT
bf [524]

:[523]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [525]

:[524]
push.e 0

:[525]
b [527]

:[526]
push.e 1

:[527]
bf [532]

:[528]
push.v self.smoketimer
push.e 1
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
push.v self.smokethreshold
cmp.v.v GTE
bf [532]

:[529]
pushi.e 353
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.smokey
pushi.e 0
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.visible
pushloc.v local.smokey
pushi.e -9
pushenv [531]

:[530]
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 1
conv.i.v
push.i [function]gml_Script_scr_var
conv.i.v
call.i gml_Script_scr_script_delayed(argc=4)
popz.v

:[531]
popenv [530]
push.v self.depth
pushi.e 10
add.i.v
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 2.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1033
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.2
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -2
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 0
pop.v.i self.smoketimer

:[532]
push.v self.shockthreshold
pushi.e 8
cmp.i.v LTE
bf [535]

:[533]
push.v self.hurttimer2
pushi.e 0
cmp.i.v EQ
bf [535]

:[534]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [536]

:[535]
push.e 0

:[536]
bf [538]

:[537]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.fsiner
pushi.e 1
pop.v.i self.flash

:[538]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [540]

:[539]
pushi.e 100
conv.i.v
pushi.e 5
conv.i.v
push.v self.shockthreshold
call.i clamp(argc=3)
pop.v.v self.shockthreshold

:[540]
push.v self.shocktimer
push.v self.shockthreshold
cmp.v.v GTE
bf [548]

:[541]
push.i 171262
setowner.e
pushi.e 60
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
pushloc.v local.i
pushi.e 4
cmp.i.v EQ
bf [543]

:[542]
pushi.e 40
pushi.e 80
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[543]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [546]

:[544]
push.i 171306
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partframe
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.i.v [array]self.partframe
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 3
cmp.i.v GTE
bf [546]

:[545]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[546]
pushloc.v local.i
pushi.e 7
cmp.i.v EQ
bf [548]

:[547]
pushi.e 0
pop.v.i self.shocktimer

:[548]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [556]

:[549]
pushi.e 79
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [551]

:[550]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [552]

:[551]
push.e 0

:[552]
bf [556]

:[553]
pushi.e 43
pop.v.i self.partmode
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.fakegrav
pushi.e 0
pop.v.i local.i

:[554]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [556]

:[555]
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [554]

:[556]
push.v self.partmode
pushi.e 41
cmp.i.v EQ
bf [585]

:[557]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [559]

:[558]
push.v self.laughtimer
push.e 1
add.i.v
pop.v.v self.laughtimer

:[559]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [583]

:[560]
push.v self.laughtimer
pushi.e 1
cmp.i.v EQ
bf [562]

:[561]
pushi.e 249
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[562]
push.v self.laughtimer
pushi.e 1
cmp.i.v GTE
bf [564]

:[563]
push.v self.laughtimer
pushi.e 30
cmp.i.v LT
b [565]

:[564]
push.e 0

:[565]
bf [567]

:[566]
pushi.e 0
pop.v.i self.headsize
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
call.i random(argc=1)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e 30
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[567]
push.v self.laughtimer
pushi.e 30
cmp.i.v GTE
bf [569]

:[568]
push.v self.laughtimer
pushi.e 48
cmp.i.v LT
b [570]

:[569]
push.e 0

:[570]
bf [572]

:[571]
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
call.i random(argc=1)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e -40
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[572]
push.v self.laughtimer
pushi.e 48
cmp.i.v GTE
bf [574]

:[573]
push.v self.laughtimer
pushi.e 60
cmp.i.v LT
b [575]

:[574]
push.e 0

:[575]
bf [577]

:[576]
push.i 171306
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
call.i random(argc=1)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[577]
push.v self.laughtimer
pushi.e 60
cmp.i.v GTE
bf [579]

:[578]
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
push.d 0.25
conv.d.v
call.i random(argc=1)
pop.v.v self.headsize
push.i 171262
setowner.e
pushi.e -70
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[579]
push.v self.laughtimer
pushi.e 80
cmp.i.v GTE
bf [581]

:[580]
pushi.e 0
pop.v.i self.headsize

:[581]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e 3
cmp.i.v GTE
bf [583]

:[582]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[583]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
pushi.e 1
pushloc.v local.i
pushi.e 5
conv.i.d
div.d.v
add.v.i
push.v self.f
mul.v.v
add.v.v
pop.i.v [array]self.partsiner
push.i 167985
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i sin(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsiner
pushi.e 2
conv.i.d
div.d.v
push.v self.f
mul.v.v
call.i cos(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [585]

:[584]
pushi.e 100
conv.i.v
pushi.e 5
conv.i.v
push.v self.shockthreshold
call.i clamp(argc=3)
pop.v.v self.shockthreshold

:[585]
push.v self.partmode
pushi.e 42
cmp.i.v EQ
bf [606]

:[586]
push.i 171507
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partsiner
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [606]

:[587]
pushi.e 0
pop.v.i local.fallen
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 130
add.i.v
cmp.v.v LT
bf [589]

:[588]
push.v self.fakegrav
pushi.e 1
add.i.v
pop.v.v self.fakegrav
push.v self.y
push.v self.fakegrav
add.v.v
pop.v.v self.y
b [590]

:[589]
pushi.e 1
pop.v.i local.fallen

:[590]
pushloc.v local.fallen
pushi.e 1
cmp.i.v EQ
bf [595]

:[591]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 216
add.i.v
cmp.v.v LT
bf [595]

:[592]
push.i 171262
setowner.e
push.d 0.1
conv.d.v
pushi.e -90
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.partrot
push.d 0.1
conv.d.v
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 3
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.partrot
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
sub.v.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 216
add.i.v
pushi.e 30
sub.i.v
cmp.v.v GT
bf [594]

:[593]
push.d 0.1
conv.d.v
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.partrot
push.d 0.1
conv.d.v
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.partrot

:[594]
push.d 0.1
conv.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 216
add.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[595]
pushloc.v local.fallen
pushi.e 0
cmp.i.v EQ
bf [606]

:[596]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [600]

:[597]
push.d 0.25
push.v self.f
mul.v.d
pushi.e 30
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e -10
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 10
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
push.v self.dead
pushi.e 1
cmp.i.v EQ
bf [599]

:[598]
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partframe

:[599]
b [606]

:[600]
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.d 0.25
push.v self.f
mul.v.d
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i lerp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [602]

:[601]
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partrot

:[602]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [604]

:[603]
push.i 167985
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partx

:[604]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [606]

:[605]
push.i 165821
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.party

:[606]
push.v self.partmode
pushi.e 43
cmp.i.v EQ
bf [608]

:[607]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [609]

:[608]
push.e 0

:[609]
bf [621]

:[610]
pushi.e 0
pop.v.i local.fallen
push.v self.falltimer
push.e 1
add.i.v
pop.v.v self.falltimer
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
add.i.v
cmp.v.v LT
bf [612]

:[611]
pushi.e 10
pop.v.i self.fallshake
push.v self.fakegrav
push.d 0.5
push.v self.fakegrav
pushi.e 10
conv.i.d
div.d.v
add.v.d
add.v.v
pop.v.v self.fakegrav
push.d 16.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.fakegrav
call.i clamp(argc=3)
pop.v.v self.fakegrav
push.v self.y
push.v self.fakegrav
add.v.v
pop.v.v self.y
b [613]

:[612]
pushi.e 1
pop.v.i local.fallen

:[613]
push.i 171306
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 6
mul.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
push.d 1.5
mul.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 6
mul.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
push.d 0.6
mul.d.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 6
mul.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
neg.v
push.d 1.6
mul.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
neg.v
push.d 0.65
mul.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 6
mul.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
neg.v
push.d 2.5
mul.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
neg.v
push.d 0.15
mul.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
push.d 6.25
mul.d.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
push.d 1.5
div.d.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 8
mul.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 167985
setowner.e
push.v self.fakegrav
push.d 1.8
mul.d.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partx
push.i 165821
setowner.e
push.v self.fakegrav
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 4
mul.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partrot
push.i 165821
setowner.e
push.v self.fakegrav
pushi.e 3
mul.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.party
push.i 171262
setowner.e
push.v self.fakegrav
neg.v
pushi.e 4
mul.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.partrot
push.i 165821
setowner.e
push.v self.fakegrav
pushi.e 3
mul.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.party
pushloc.v local.fallen
pushi.e 0
cmp.i.v NEQ
bf [621]

:[614]
push.v self.fallshake
pushi.e 10
cmp.i.v EQ
bf [616]

:[615]
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[616]
pushi.e 0
pop.v.i local.ii

:[617]
pushloc.v local.ii
pushi.e 7
cmp.i.v LT
bf [619]

:[618]
pushi.e -1
pushloc.v local.ii
conv.v.i
dup.i 1
push.v [array]self.party
push.v self.fallshake
push.v self.fallshake
neg.v
call.i random_range(argc=2)
add.v.v
pop.i.v [array]self.party
push.i 167985
setowner.e
pushi.e -1
pushloc.v local.ii
conv.v.i
dup.i 1
push.v [array]self.partx
push.v self.fallshake
push.v self.fallshake
neg.v
call.i random_range(argc=2)
add.v.v
pop.i.v [array]self.partx
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [617]

:[619]
push.v self.fallshake
pushi.e 0
cmp.i.v GT
bf [621]

:[620]
push.v self.fallshake
push.e 1
sub.i.v
pop.v.v self.fallshake

:[621]
pushi.e 0
pop.v.i self.scalebonus
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [623]

:[622]
push.v self.headsize
pop.v.v self.scalebonus

:[623]
push.v self.shadow_amount
pushi.e 0
cmp.i.v GTE
bf [625]

:[624]
push.i 171579
setowner.e
push.v self.shadow_amount
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.partblend

:[625]
push.v self.facing
pushi.e -1
cmp.i.v EQ
bf [627]

:[626]
pushi.e 110
pop.v.i self.lastxoff
b [628]

:[627]
pushi.e 0
pop.v.i self.lastxoff

:[628]
pushi.e 390
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [630]

:[629]
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171579
setowner.e
push.v self.blend
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend
b [632]

:[630]
pushi.e -1
pushi.e 5
push.v [array]self.partblend
push.v self.blend
cmp.v.v EQ
bf [632]

:[631]
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend

:[632]
pushi.e 0
pop.v.i local.shakevar
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [653]

:[633]
push.v self.hurttimer2
pushi.e 0
cmp.i.v GT
bf [635]

:[634]
push.v self.hurttimer2
push.e 1
sub.i.v
pop.v.v self.hurttimer2

:[635]
push.v self.hurttimer2
pushi.e 1
cmp.i.v EQ
bf [653]

:[636]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
bf [638]

:[637]
pushi.e 10
pop.v.i self.shockthreshold
pushi.e 1
pop.v.i self.partmode

:[638]
push.v self.didwejustdie
pushi.e 0
cmp.i.v EQ
bf [641]

:[639]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [641]

:[640]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
b [642]

:[641]
push.e 0

:[642]
bt [650]

:[643]
push.v self.didwejustdie
pushi.e 0
cmp.i.v EQ
bf [648]

:[644]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [648]

:[645]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.1
mul.d.v
cmp.v.v LTE
bf [648]

:[646]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [648]

:[647]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v EQ
b [649]

:[648]
push.e 0

:[649]
b [651]

:[650]
push.e 1

:[651]
bf [653]

:[652]
pushi.e 99
pop.v.i self.partmode
pushi.e 1
pop.v.i self.dontchangepose

:[653]
push.v self.hurttimer2
pushi.e 0
cmp.i.v GT
bf [655]

:[654]
push.v self.hurttimer2
call.i random(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.hurttimer2
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.v.v local.shakevar

:[655]
push.v self.headendcon
pushi.e 1
cmp.i.v EQ
bf [657]

:[656]
push.i 171262
setowner.e
pushi.e -37
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 171269
setowner.e
pushi.e 3322
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite

:[657]
push.v self.headendcon
pushi.e 2
cmp.i.v EQ
bf [659]

:[658]
push.i 171262
setowner.e
pushi.e 15
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
push.i 171269
setowner.e
pushi.e 1982
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite

:[659]
push.v self.headendcon
pushi.e 3
cmp.i.v EQ
bf [661]

:[660]
pushi.e 3322
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite

:[661]
pushi.e 658
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [663]

:[662]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
b [664]

:[663]
push.e 0

:[664]
bf [666]

:[665]
push.i 171262
setowner.e
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.partrot
pushi.e 60
conv.i.v
call.i random(argc=1)
sub.v.v
pop.i.v [array]self.partrot

:[666]
push.v self.headforceframe
pushi.e -1
cmp.i.v NEQ
bf [668]

:[667]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
b [669]

:[668]
push.e 0

:[669]
bf [671]

:[670]
push.i 171306
setowner.e
push.v self.headforceframe
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe

:[671]
push.v self.funnycheat
pushi.e 5
cmp.i.v GT
bf [719]

:[672]
push.v self.funnycheattimer
pushi.e 28
cmp.i.v LT
bf [674]

:[673]
push.v self.funnycheattimer
push.d 0.125
add.d.v
pop.v.v self.funnycheattimer

:[674]
push.i 171579
setowner.e
push.v self.funnycheattimer
pushi.e 30
conv.i.d
div.d.v
pushi.e 255
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend
push.v self.funnycheattimer
pushi.e 24
cmp.i.v EQ
bf [676]

:[675]
pushi.e 101
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.funnycheattimer3
push.e 1
add.i.v
pop.v.v self.funnycheattimer3

:[676]
push.v self.funnycheattimer3
pushi.e 0
cmp.i.v GT
bf [679]

:[677]
push.v self.funnycheattimer3
pushi.e 33
cmp.i.v LT
bf [679]

:[678]
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
b [680]

:[679]
push.e 0

:[680]
bf [712]

:[681]
push.v self.funnycheattimer3
push.e 1
add.i.v
pop.v.v self.funnycheattimer3
push.v self.funnycheattimer3
pushi.e 0
cmp.i.v GT
bf [683]

:[682]
push.v self.funnycheattimer3
pushi.e 6
cmp.i.v LT
b [684]

:[683]
push.e 0

:[684]
bf [686]

:[685]
push.v self.funnycheattimer3
pushi.e 6
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.v self.headexpand
call.i lerp(argc=3)
pop.v.v self.headexpand

:[686]
push.v self.funnycheattimer3
pushi.e 8
cmp.i.v GTE
bf [688]

:[687]
push.v self.funnycheattimer3
pushi.e 16
cmp.i.v LT
b [689]

:[688]
push.e 0

:[689]
bf [691]

:[690]
push.v self.funnycheattimer3
pushi.e 8
sub.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.headexpand
call.i lerp(argc=3)
pop.v.v self.headexpand

:[691]
push.v self.funnycheattimer3
pushi.e 16
cmp.i.v GTE
bf [693]

:[692]
push.v self.funnycheattimer3
pushi.e 22
cmp.i.v LT
b [694]

:[693]
push.e 0

:[694]
bf [696]

:[695]
push.v self.funnycheattimer3
pushi.e 16
sub.i.v
pushi.e 6
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.v self.headexpand
call.i lerp(argc=3)
pop.v.v self.headexpand

:[696]
push.v self.funnycheattimer3
pushi.e 24
cmp.i.v GTE
bf [698]

:[697]
push.v self.funnycheattimer3
pushi.e 32
cmp.i.v LT
b [699]

:[698]
push.e 0

:[699]
bf [701]

:[700]
push.v self.funnycheattimer3
pushi.e 24
sub.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.headexpand
call.i lerp(argc=3)
pop.v.v self.headexpand

:[701]
push.v self.funnycheattimer3
pushi.e 4
cmp.i.v GTE
bf [703]

:[702]
push.v self.funnycheattimer3
pushi.e 10
cmp.i.v LTE
b [704]

:[703]
push.e 0

:[704]
bt [709]

:[705]
push.v self.funnycheattimer3
pushi.e 20
cmp.i.v GTE
bf [707]

:[706]
push.v self.funnycheattimer3
pushi.e 26
cmp.i.v LTE
b [708]

:[707]
push.e 0

:[708]
b [710]

:[709]
push.e 1

:[710]
bf [712]

:[711]
pushi.e -12
pushi.e 24
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.shakevar

:[712]
push.v self.funnycheattimer2
push.e 1
add.i.v
pop.v.v self.funnycheattimer2
push.v self.funnycheattimer2
pushi.e 10
cmp.i.v GTE
bf [714]

:[713]
push.v self.image_alpha
push.d 0.6
cmp.d.v GT
b [715]

:[714]
push.e 0

:[715]
bf [719]

:[716]
pushi.e 353
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.smokey
pushi.e 0
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.visible
pushloc.v local.smokey
pushi.e -9
pushenv [718]

:[717]
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 1
conv.i.v
push.i [function]gml_Script_scr_var
conv.i.v
call.i gml_Script_scr_script_delayed(argc=4)
popz.v

:[718]
popenv [717]
push.v self.depth
pushi.e 10
add.i.v
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 2.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1033
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.2
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -2
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 0
pop.v.i self.funnycheattimer2

:[719]
pushi.e 0
pop.v.i local.expand
pushloc.v local.i
pushi.e 5
cmp.i.v EQ
bf [721]

:[720]
push.v self.headexpand
pop.v.v local.expand

:[721]
push.v self.image_alpha
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partblend
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
push.v self.facing
mul.v.v
pushi.e 2
push.v self.scalebonus
add.v.i
pushloc.v local.expand
add.v.v
pushi.e 2
push.v self.scalebonus
add.v.i
push.v self.facing
mul.v.v
pushloc.v local.expand
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushloc.v local.shakevar
sub.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.v self.facing
mul.v.v
add.v.v
push.v self.lastxoff
add.v.v
pushloc.v local.shakevar
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.violentendflash
pushi.e 0
cmp.i.v GT
bf [723]

:[722]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.violentendflash
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partblend
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partrot
push.v self.facing
mul.v.v
pushi.e 2
push.v self.scalebonus
add.v.i
pushi.e 2
push.v self.scalebonus
add.v.i
push.v self.facing
mul.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushloc.v local.shakevar
sub.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partx
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partxoff
push.v self.facing
mul.v.v
add.v.v
push.v self.lastxoff
add.v.v
pushloc.v local.shakevar
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partframe
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partsprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[723]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [116]

:[724]
push.v self.shocker
pushi.e 0
cmp.i.v LT
bf [727]

:[725]
push.v self.shocker_threshold
pop.v.v self.shocker
push.v self.shocker_threshold
pushi.e 2
cmp.i.v GT
bf [727]

:[726]
push.v self.shocker_threshold
push.d 0.25
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.shocker_threshold

:[727]
push.v self.partmode
pushi.e 13
cmp.i.v EQ
bf [729]

:[728]
push.i 171306
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partframe
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
push.v self.facing
mul.v.v
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
push.v self.facing
mul.v.v
add.v.v
pushi.e 15
add.i.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
pushi.e -1
pushi.e 5
push.v [array]self.partsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 3
mod.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 13
pushi.e -1
pushi.e 0
push.v [array]self.partrot
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
add.v.i
push.v self.armendy
pushi.e 6
add.i.v
push.v self.armendx
pushi.e 120
add.i.v
call.i draw_circle(argc=4)
popz.v

:[729]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.x
pushi.e -1
pushi.e 5
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partxoff
add.v.v
pop.v.v self.headx
push.v self.y
pushi.e -1
pushi.e 5
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 5
push.v [array]self.partyoff
add.v.v
pop.v.v self.heady
push.v self.headx
push.v self.hitdetector
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.heady
push.v self.hitdetector
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -1
pushi.e 5
push.v [array]self.partrot
push.v self.hitdetector
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e -1
pushi.e 5
push.v [array]self.partframe
push.v self.hitdetector
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.hitcon
pushi.e 1
cmp.i.v EQ
bt [731]

:[730]
push.v self.hitcon
pushi.e -1
cmp.i.v EQ
b [732]

:[731]
push.e 1

:[732]
bf [736]

:[733]
push.i 171579
setowner.e
push.i 4235519
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend
pushi.e 0
pop.v.i self.hitcontimer
push.v self.headhit
pushi.e 20
cmp.i.v LT
bf [735]

:[734]
push.v self.headhit
pushi.e 6
add.i.v
pop.v.v self.headhit

:[735]
pushi.e 2
pop.v.i self.hitcon

:[736]
push.v self.hitcon
pushi.e 2
cmp.i.v EQ
bf [741]

:[737]
push.v self.hitcontimer
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.v.v self.hitcontimer
push.v self.hitcontimer
pushi.e 5
cmp.i.v GTE
bf [739]

:[738]
push.d 0.15
push.v self.f
mul.v.d
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
push.v [array]self.partblend
call.i merge_color(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend

:[739]
push.v self.hitcontimer
pushi.e 15
cmp.i.v GTE
bf [741]

:[740]
pushi.e 0
pop.v.i self.hitcontimer
pushi.e 0
pop.v.i self.hitcon
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partblend

:[741]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [746]

:[742]
push.v self.drawaimer
pushi.e 1
cmp.i.v EQ
bf [744]

:[743]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
push.v self.armendy
push.v self.armendx
call.i draw_line_width(argc=5)
popz.v

:[744]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [746]

:[745]
push.v self.drawaimer
conv.v.b
not.b
pop.v.b self.drawaimer

:[746]
push.v self.violentendflash
pushi.e 0
cmp.i.v GT
bf [748]

:[747]
push.v self.violentendflash
push.e 1
add.i.v
pop.v.v self.violentendflash

:[748]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [750]

:[749]
pushi.e 0
pop.v.i self.flash

:[750]
pushi.e 0
pop.v.i self.becomeflash

:[end]