.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.wallcheck
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
call.i gml_Script_left_h_ch1(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.press_l

:[2]
call.i gml_Script_right_h_ch1(argc=0)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.press_r

:[4]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.press_u

:[6]
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.press_d

:[8]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.wspeed
pop.v.v self.px

:[10]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.wspeed
neg.v
pop.v.v self.px

:[12]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.wspeed
pop.v.v self.py

:[14]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.wspeed
neg.v
pop.v.v self.py

:[16]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [20]

:[17]
push.v self.disableslow
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.px
push.d 0.5
mul.d.v
call.i ceil(argc=1)
pop.v.v self.px
push.v self.py
push.d 0.5
mul.d.v
call.i ceil(argc=1)
pop.v.v self.py

:[19]
b [21]

:[20]
pushi.e 0
pop.v.i self.disableslow

:[21]
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [23]

:[22]
pushi.e 1
pop.v.i self.xymeet

:[23]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [54]

:[24]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [40]

:[25]
push.v self.wspeed
pop.v.v self.g

:[26]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [40]

:[27]
pushi.e 0
pop.v.i self.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [33]

:[31]
push.v self.y
push.v self.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [40]

:[32]
pushi.e 1
pop.v.i self.mvd

:[33]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [36]

:[34]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.y
push.v self.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [40]

:[39]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [26]

:[40]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [46]

:[41]
push.v self.px
pop.v.v self.i

:[42]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [46]

:[43]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [45]

:[44]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [46]

:[45]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [42]

:[46]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [52]

:[47]
push.v self.px
pop.v.v self.i

:[48]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [52]

:[49]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [51]

:[50]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [52]

:[51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [48]

:[52]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i self.px

:[54]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [85]

:[55]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [71]

:[56]
push.v self.wspeed
pop.v.v self.g

:[57]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [71]

:[58]
pushi.e 0
pop.v.i self.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [64]

:[62]
push.v self.x
push.v self.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [71]

:[63]
pushi.e 1
pop.v.i self.mvd

:[64]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [67]

:[65]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.v self.x
push.v self.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [71]

:[70]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [57]

:[71]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [77]

:[72]
push.v self.py
pop.v.v self.i

:[73]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [77]

:[74]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [76]

:[75]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [77]

:[76]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [73]

:[77]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [83]

:[78]
push.v self.py
pop.v.v self.i

:[79]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [83]

:[80]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [82]

:[81]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [83]

:[82]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [79]

:[83]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
pushi.e 0
pop.v.i self.py

:[85]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [110]

:[86]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v self.i
push.v self.py
pop.v.v self.j

:[87]
push.v self.j
pushi.e 0
cmp.i.v NEQ
bt [89]

:[88]
push.v self.i
pushi.e 0
cmp.i.v NEQ
b [90]

:[89]
push.e 1

:[90]
bf [108]

:[91]
pushi.e 1518
conv.i.v
push.v self.y
push.v self.j
add.v.v
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [93]

:[92]
push.v self.i
pop.v.v self.px
push.v self.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [108]

:[93]
push.v self.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [99]

:[94]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [96]

:[95]
push.v self.j
pushi.e 1
sub.i.v
pop.v.v self.j

:[96]
push.v self.j
pushi.e 0
cmp.i.v LT
bf [98]

:[97]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j

:[98]
b [100]

:[99]
pushi.e 0
pop.v.i self.j

:[100]
push.v self.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [106]

:[101]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[103]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [105]

:[104]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[105]
b [107]

:[106]
pushi.e 0
pop.v.i self.i

:[107]
b [87]

:[108]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[110]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
cmp.v.v GTE
bf [112]

:[111]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
push.v self.x
sub.v.v
pop.v.v self.px

:[112]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
cmp.i.v LTE
bf [114]

:[113]
push.v self.x
neg.v
pop.v.v self.px

:[114]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
cmp.i.v LTE
bf [116]

:[115]
push.v self.y
neg.v
pop.v.v self.py

:[116]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.boundaryup
add.v.v
cmp.v.v GTE
bf [118]

:[117]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.y
sub.v.v
push.v self.boundaryup
add.v.v
pop.v.v self.py

:[118]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y
push.v self.dmgnoise
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e 0
pop.v.i self.dmgnoise
pushi.e 439
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[120]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v GT
bf [122]

:[121]
push.d 0.25
pop.v.d self.image_speed
b [123]

:[122]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[123]
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.heartx
push.v self.y
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.hearty

:[end]