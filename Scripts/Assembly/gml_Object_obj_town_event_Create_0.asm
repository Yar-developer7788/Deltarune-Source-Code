.localvar 2 arguments
.localvar 15292 snail_guy 6918
.localvar 15293 donut_guy 6919
.localvar 15294 scarflady 6920
.localvar 15295 conbini 6921
.localvar 15299 cardowna 6926
.localvar 15300 cardownb 6927
.localvar 15301 cardownc 6928
.localvar 15302 carrighta 6929
.localvar 15303 carrightb 6930
.localvar 15304 carrightc 6931
.localvar 15305 carlefta 6932
.localvar 15306 carleftb 6933
.localvar 15307 carupa 6934
.localvar 15308 carupb 6935
.localvar 15309 carupc 6936
.localvar 15310 carupd 6937
.localvar 15311 carsnail 6938
.localvar 15312 cardonut 6939
.localvar 3641 undyne 6940

:[0]
pushi.e 0
pop.v.i self.choicetimer
pushi.e 0
pop.v.i self.flush
pushi.e 0
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [8]

:[1]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [6]

:[2]
pushi.e -5
pushi.e 271
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 110
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bnpc
pushi.e 1065
push.v self.bnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [5]

:[4]
pushi.e 103
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 7
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bnpc
pushi.e 1069
push.v self.bnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[5]
b [8]

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 103
conv.i.v
pushi.e 65
conv.i.v
pushi.e 170
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.snail_guy
pushi.e 1099
pushloc.v local.snail_guy
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 65
conv.i.v
pushi.e 91
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.donut_guy
pushi.e 1098
pushloc.v local.donut_guy
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 85
conv.i.v
pushi.e 1155
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.scarflady
pushi.e 1155
pushloc.v local.scarflady
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.05
conv.d.v
pushi.e 2966
conv.i.v
pushi.e -50
conv.i.v
pushi.e 940
conv.i.v
call.i gml_Script_scr_marker_animated(argc=4)
pop.v.v local.conbini
push.i 980000
pushloc.v local.conbini
pushi.e -9
pop.v.i [stacktop]self.depth

:[8]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [12]

:[9]
pushi.e 1097
conv.i.v
pushi.e 57
conv.i.v
pushi.e 292
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.policewindow
push.v self.policewindow
pushi.e -9
pushenv [11]

:[10]
push.i 940000
pop.v.i self.depth

:[11]
popenv [10]

:[12]
pushbltn.v builtin.room
pushi.e 42
cmp.i.v EQ
bf [18]

:[13]
pushi.e 188
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.overlay
pushi.e 82
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.bg

:[15]
popenv [14]
push.v self.overlay
pushi.e -9
pushenv [17]

:[16]
push.d 0.4
pop.v.d self.image_alpha
push.d 0.1
pop.v.d self.ss
pushi.e 2477
pop.v.i self.sprite_index
pushi.e 1000
pop.v.i self.depth

:[17]
popenv [16]

:[18]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [end]

:[19]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [22]

:[20]
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [22]

:[21]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 103
conv.i.v
pushi.e 51
conv.i.v
pushi.e 847
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cardowna
pushi.e 3161
pushloc.v local.cardowna
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 230
conv.i.v
pushi.e 842
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cardownb
pushi.e 3161
pushloc.v local.cardownb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 147
conv.i.v
pushi.e 667
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cardownc
pushi.e 3161
pushloc.v local.cardownc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 4
conv.i.v
pushi.e 815
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carrighta
pushi.e 3163
pushloc.v local.carrighta
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 196
conv.i.v
pushi.e 815
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carrightb
pushi.e 3163
pushloc.v local.carrightb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 130
conv.i.v
pushi.e 593
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carrightc
pushi.e 3163
pushloc.v local.carrightc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 100
conv.i.v
pushi.e 812
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carlefta
pushi.e 3160
pushloc.v local.carlefta
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 160
conv.i.v
pushi.e 593
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carleftb
pushi.e 3160
pushloc.v local.carleftb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 38
conv.i.v
pushi.e 815
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carupa
pushi.e 3162
pushloc.v local.carupa
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 137
conv.i.v
pushi.e 707
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carupb
pushi.e 3162
pushloc.v local.carupb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e -50
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carupc
pushi.e 3162
pushloc.v local.carupc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 138
conv.i.v
pushi.e 548
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carupd
pushi.e 3162
pushloc.v local.carupd
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 130
conv.i.v
pushi.e 832
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.carsnail
pushi.e 1099
pushloc.v local.carsnail
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 130
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cardonut
pushi.e 1098
pushloc.v local.cardonut
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 110
conv.i.v
pushi.e 57
conv.i.v
pushi.e 910
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.undyne
pushi.e 1108
pushloc.v local.undyne
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]