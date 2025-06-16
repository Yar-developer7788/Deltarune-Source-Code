.localvar 2 arguments

:[0]
push.v self.maxdelaytimer
pushi.e 1
add.i.v
pop.v.v self.maxdelaytimer
push.v self.spelluse
pushi.e 1
cmp.i.v EQ
bf [14]

:[1]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [14]

:[2]
pushi.e 0
pop.v.i self.xyz

:[3]
push.v self.xyz
pushi.e 3
cmp.i.v LT
bf [14]

:[4]
push.v self.maxdelaytimer
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.spelldelay
cmp.v.v EQ
bf [13]

:[5]
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.charitem
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [8]

:[7]
pushi.e 4
pop.v.i self.state

:[8]
popenv [7]

:[9]
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.charspell
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [12]

:[11]
pushi.e 2
pop.v.i self.state

:[12]
popenv [11]

:[13]
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.xyz
b [3]

:[14]
push.v self.maxdelaytimer
push.v self.maxdelay
cmp.v.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.active

:[16]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [52]

:[19]
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bt [22]

:[20]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bt [22]

:[21]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [29]

:[24]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [26]

:[25]
push.v self.i
pushi.e 2
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
pushi.e 0
conv.b.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e 300
add.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 77
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[29]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [32]

:[30]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [51]

:[34]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pop.v.v self.j
pushi.e 0
pop.v.i self.fullbox
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
pushi.e -1
pushi.e 1
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[37]
push.v self.j
pushi.e 2
cmp.i.v EQ
bf [40]

:[38]
push.i 8388736
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [40]

:[39]
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[40]
push.v self.j
pushi.e 3
cmp.i.v EQ
bf [43]

:[41]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 3
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
pushi.e -1
pushi.e 3
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[43]
push.v self.j
pushi.e 4
cmp.i.v EQ
bf [46]

:[44]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [46]

:[45]
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[46]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 36
add.i.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 15
push.v self.boltspeed
mul.v.i
add.v.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e 78
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 35
add.i.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 15
push.v self.boltspeed
mul.v.i
add.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 2
add.i.v
push.v self.x
pushi.e 79
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
push.v self.j
pushi.e 1
sub.i.v
pushi.e 1394
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e -5
pushi.e 13
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1395
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[48]
pushi.e -5
pushi.e 13
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
push.v self.i
pushi.e 1395
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[50]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
push.v self.j
pushi.e 1
sub.i.v
pushi.e 1396
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[52]
push.i 169678
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.boltcount
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.boltcount
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.boltcount
push.v self.my_method
pushi.e 1
cmp.i.v EQ
bf [78]

:[53]
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [69]

:[55]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
pop.v.v self.offset
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e -5
cmp.i.v LT
bf [57]

:[56]
push.i 166312
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.boltalive

:[57]
pushi.e 1
pop.v.i self.boltalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e 0
cmp.i.v LT
bf [59]

:[58]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.i
pop.v.v self.boltalpha
b [66]

:[59]
push.v self.imagetimer
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [66]

:[63]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 38
push.v self.offset
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.img
push.v self.img
pushi.e -9
pushenv [65]

:[64]
pushi.e 1375
pop.v.i self.sprite_index
push.d 0.4
pop.v.d self.image_alpha

:[65]
popenv [64]

:[66]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.boltalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 38
push.v self.offset
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1375
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 169678
setowner.e
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
conv.v.i
dup.i 1
push.v [array]self.boltcount
pushi.e 1
add.i.v
pop.i.v [array]self.boltcount

:[68]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[69]
pushi.e 0
pop.v.i self.i

:[70]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [78]

:[71]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltcount
pushi.e 0
cmp.i.v EQ
bf [74]

:[72]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.attacked
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.i 165958
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.attacked
push.v self.i
pop.v.v self.target
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[77]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [70]

:[78]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [99]

:[79]
pushi.e -5
pushi.e 13
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [96]

:[80]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [82]

:[81]
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 0
conv.i.v
call.i gml_Script_scr_boltcheck(argc=1)
popz.v

:[85]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [87]

:[86]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 1
conv.i.v
call.i gml_Script_scr_boltcheck(argc=1)
popz.v

:[90]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [92]

:[91]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 2
conv.i.v
call.i gml_Script_scr_boltcheck(argc=1)
popz.v

:[95]
b [98]

:[96]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [98]

:[97]
call.i gml_Script_scr_boltcheck_onebutton(argc=0)
popz.v

:[98]
b [101]

:[99]
pushi.e 1
pop.v.i self.fakefade
push.v self.posttimer
push.v self.timermax
pushi.e 35
sub.i.v
cmp.v.v LT
bf [101]

:[100]
push.v self.timermax
pushi.e 34
sub.i.v
pop.v.v self.posttimer

:[101]
push.v self.imagetimer
pushi.e 1
add.i.v
pop.v.v self.imagetimer
push.v self.boltx
pushi.e 1
add.i.v
pop.v.v self.boltx
push.i 166306
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
push.v self.imagetimer
pushi.e 1
cmp.i.v GT
bf [103]

:[102]
pushi.e 0
pop.v.i self.imagetimer

:[103]
pushi.e 0
pop.v.i self.goahead
pushi.e -1
pushi.e 0
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [105]

:[104]
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [116]

:[107]
pushi.e -1
pushi.e 1
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [109]

:[108]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 1

:[110]
bf [116]

:[111]
pushi.e -1
pushi.e 2
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [113]

:[112]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [116]

:[115]
pushi.e 1
pop.v.i self.goahead

:[116]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushi.e 1
pop.v.i self.goahead

:[118]
push.v self.goahead
pushi.e 1
cmp.i.v EQ
bf [141]

:[119]
push.v self.posttimer
pushi.e 1
add.i.v
pop.v.v self.posttimer
push.v self.posttimer
push.v self.timermax
pushi.e 35
sub.i.v
cmp.v.v GT
bf [123]

:[120]
push.v self.haveauto
pushi.e 1
cmp.i.v EQ
bf [123]

:[121]
push.v self.autoed
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
b [124]

:[123]
push.e 0

:[124]
bf [130]

:[125]
push.i 231853
setowner.e
pushi.e 160
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.points
pushi.e -5
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 0
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.points

:[127]
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [129]

:[128]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.is_auto_susie

:[129]
popenv [128]
push.v self.posttimer
pushi.e 25
sub.i.v
pop.v.v self.posttimer
pushi.e 1
pop.v.i self.autoed

:[130]
push.v self.posttimer
push.v self.timermax
cmp.v.v GT
bf [141]

:[131]
pushi.e 1
pop.v.i self.fade
pushi.e 371
pushenv [135]

:[132]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
pushi.e 0
pop.v.i self.state

:[134]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.itemed

:[135]
popenv [132]
pushi.e 0
pop.v.i self.techwon
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
pushi.e 1
pop.v.i self.techwon

:[137]
push.v self.techwon
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[139]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[141]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bt [143]

:[142]
push.v self.fakefade
pushi.e 1
cmp.i.v EQ
b [144]

:[143]
push.e 1

:[144]
bf [end]

:[145]
push.v self.fadeamt
push.d 0.08
add.d.v
pop.v.v self.fadeamt
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fadeamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushi.e 300
add.i.v
push.v self.x
pushi.e 640
add.i.v
push.v self.y
push.v self.x
pushi.e 1
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [end]

:[146]
push.v self.fadeamt
pushi.e 1
cmp.i.v GT
bf [end]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[end]