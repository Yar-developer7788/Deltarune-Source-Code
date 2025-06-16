.localvar 2 arguments
.localvar 36678 currentW 18301
.localvar 36679 currentH 18302
.localvar 720 len 18303

:[0]
push.i 800000
pop.v.i self.depth
pushi.e 0
pop.v.i self.lost
pushi.e 0
pop.v.i self.won
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.init
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
pop.v.b self.use_ja
push.s ""@157
pop.v.s self.currentString
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_11_0"@36653
conv.s.v
push.s "APPLE"@36654
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.idealString
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [4]

:[1]
push.v self.use_ja
conv.v.b
bf [3]

:[2]
push.s "YEEES2O!!"@36656
pop.v.s self.idealString
b [4]

:[3]
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_12_0"@36657
conv.s.v
push.s "AGREE2ALL"@36658
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.idealString

:[4]
push.s ""@157
pop.v.s self.addString
pushi.e 0
pop.v.i self.letterCount
pushi.e -100
pop.v.i self.lastPressedTile
pushi.e 0
pop.v.i self.firstTileX
pushi.e 2398
pop.v.i self.victorySprite
pushi.e 0
pop.v.i self.imageTimer
pushi.e 80
pop.v.i self.krisStartX
pushi.e 220
pop.v.i self.krisStartY
pushi.e 0
pop.v.i self.failcount
pushi.e 0
pop.v.i self.monitorx
pushi.e 0
pop.v.i self.monitory
pushi.e 0
pop.v.i self.victoryextra
pushi.e 0
pop.v.b self.hacked
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [6]

:[5]
pushi.e 134
pop.v.i self.krisStartX
pushi.e 210
pop.v.i self.krisStartY
pushi.e 2399
pop.v.i self.victorySprite

:[6]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2401
pop.v.i self.victorySprite

:[8]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
b [11]

:[10]
pushi.e 0
conv.i.v

:[11]
pop.v.v self.autoGenerate
pushi.e 8
pop.v.i self.autoWidth
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_38_0"@36671
conv.s.v
push.s "GIAEEFSBISSFLBALAELRHEIGSFFEBRSI"@36672
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.autoString
push.v self.x
pop.v.v self.autoX
push.v self.y
pop.v.v self.autoY
push.v self.autoGenerate
pushi.e 1
cmp.i.v EQ
bf [22]

:[12]
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_46_0"@36676
conv.s.v
push.s "GIASFELFEBREHBER"@36677
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.idealString
pushi.e 0
pop.v.i local.currentW
pushi.e 0
pop.v.i local.currentH
push.v self.use_ja
conv.v.b
bf [16]

:[13]
pushi.e 10
pop.v.i self.autoWidth
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_56_0"@36680
conv.s.v
push.s "UPIOMAOIOTSUGNINMGUSIFIOPEKIFUSIORATEGUI"@36681
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.autoString
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.autoX
push.v self.y
pop.v.v self.autoY
push.s "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_59_0"@36682
conv.s.v
push.s "SUFUGIOROTENIPEKENAMO"@36683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.idealString
pushi.e 1
conv.b.v
push.s "JA_TILES"@36684
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 36
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
b [17]

:[16]
pushi.e 0
conv.b.v
push.s "JA_TILES"@36684
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[17]
push.v self.autoString
call.i string_length(argc=1)
pop.v.v local.len
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushloc.v local.len
cmp.v.v LT
bf [22]

:[19]
push.i 174450
setowner.e
pushi.e 1122
conv.i.v
push.v self.autoY
pushloc.v local.currentH
pushi.e 40
mul.i.v
add.v.v
push.v self.autoX
pushloc.v local.currentW
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keytile
push.i 233113
setowner.e
push.v self.i
pushi.e 1
add.i.v
push.v self.autoString
call.i string_char_at(argc=2)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.keytile
pushi.e -9
pop.v.v [stacktop]self.myString
push.v local.currentW
push.e 1
add.i.v
pop.v.v local.currentW
pushloc.v local.currentW
push.v self.autoWidth
cmp.v.v GTE
bf [21]

:[20]
pushi.e 0
pop.v.i local.currentW
push.v local.currentH
push.e 1
add.i.v
pop.v.v local.currentH

:[21]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [18]

:[22]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [27]

:[23]
pushi.e 40
pop.v.i self.monitorx
pushi.e -20
pop.v.i self.monitory
pushi.e 0
pop.v.i self.victorySprite
push.v self.use_ja
conv.v.b
bf [25]

:[24]
pushi.e 527
conv.i.v
push.i 1100000
conv.i.v
push.v self.monitory
push.v self.monitorx
call.i gml_Script_scr_dark_marker_depth(argc=4)
pop.v.v self.monitor
push.v self.monitorx
pushi.e 412
add.i.v
pop.v.v self.monitorx
b [26]

:[25]
pushi.e 3220
conv.i.v
push.i 1100000
conv.i.v
push.v self.monitory
push.v self.monitorx
call.i gml_Script_scr_dark_marker_depth(argc=4)
pop.v.v self.monitor
push.v self.monitorx
pushi.e 390
add.i.v
pop.v.v self.monitorx

:[26]
push.d 0.0625
push.v self.monitor
pushi.e -9
pop.v.d [stacktop]self.image_speed
b [31]

:[27]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [29]

:[28]
pushi.e 80
pop.v.i self.monitorx
pushi.e 0
pop.v.i self.monitory
b [30]

:[29]
pushi.e 40
pop.v.i self.monitorx
pushi.e 0
pop.v.i self.monitory

:[30]
pushi.e 3219
conv.i.v
push.i 950000
conv.i.v
push.v self.monitory
push.v self.monitorx
call.i gml_Script_scr_dark_marker_depth(argc=4)
pop.v.v self.monitor
push.d 0.0625
push.v self.monitor
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.monitorx
pushi.e 330
add.i.v
pop.v.v self.monitorx

:[31]
push.v self.monitory
pushi.e 70
add.i.v
pop.v.v self.monitory
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [33]

:[32]
pushi.e -5
pushi.e 390
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 1
pop.v.b self.won

:[36]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [38]

:[37]
pushi.e -5
pushi.e 333
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.b self.won

:[41]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [43]

:[42]
pushi.e -5
pushi.e 420
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 2402
pop.v.i self.victorySprite
pushi.e 1
pop.v.b self.won

:[46]
push.v self.won
conv.v.b
bf [end]

:[47]
push.v self.idealString
pop.v.v self.currentString
push.v self.victorySprite
call.i sprite_get_number(argc=1)
push.d 0.5
sub.d.v
pop.v.v self.imageTimer

:[end]