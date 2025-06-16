.localvar 2 arguments
.localvar 720 len 19700

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
push.s ""@157
pop.v.s self.currentString
push.s ""@157
pop.v.s self.noelleString
push.s "obj_ch2_keyboard_cutscene_controller_slash_Create_0_gml_15_0"@38107
conv.s.v
push.s "DECEMBER"@31683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.idealString
push.s ""@157
pop.v.s self.addString
pushi.e 0
pop.v.i self.letterCount
pushi.e -100
pop.v.i self.lastPressedTile
pushi.e -100
pop.v.i self.lastPressedTile
pushi.e 0
pop.v.i self.imageTimer
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.autoGenerate
pushi.e 8
pop.v.i self.autoWidth
push.s "obj_ch2_keyboard_cutscene_controller_slash_Create_0_gml_25_0"@38108
conv.s.v
push.s "DECEMBER"@31683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.autoString
push.v self.x
pop.v.v self.autoX
push.v self.y
pop.v.v self.autoY
push.v self.autoString
call.i string_length(argc=1)
pop.v.v local.len
pushi.e 0
pop.v.i self.j

:[4]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [end]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushloc.v local.len
cmp.v.v LT
bf [10]

:[7]
push.i 174450
setowner.e
pushi.e 1122
conv.i.v
push.v self.autoY
push.v self.j
pushi.e 120
mul.i.v
add.v.v
push.v self.autoX
push.v self.i
pushi.e 200
mul.i.v
add.v.v
pushi.e 1
push.v self.j
sub.v.i
pushi.e 60
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
push.v self.currentW
push.e 1
add.i.v
pop.v.v self.currentW
push.v self.currentW
push.v self.autoWidth
cmp.v.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.currentW
push.v self.currentH
push.e 1
add.i.v
pop.v.v self.currentH

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[10]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [4]

:[end]