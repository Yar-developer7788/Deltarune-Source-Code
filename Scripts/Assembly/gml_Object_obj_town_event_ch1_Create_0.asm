.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.choicetimer
pushi.e 0
pop.v.i self.flush
pushi.e 0
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [4]

:[1]
pushi.e -5
pushi.e 271
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1413
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bnpc
pushi.e 3644
push.v self.bnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [4]

:[3]
pushi.e 1412
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 7
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bnpc
pushi.e 3648
push.v self.bnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[4]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [8]

:[5]
pushi.e 3675
conv.i.v
pushi.e 57
conv.i.v
pushi.e 292
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.policewindow
push.v self.policewindow
pushi.e -9
pushenv [7]

:[6]
push.i 940000
pop.v.i self.depth

:[7]
popenv [6]

:[8]
pushbltn.v builtin.room
pushi.e 297
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1462
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.overlay
pushi.e 1351
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.bg

:[11]
popenv [10]
push.v self.overlay
pushi.e -9
pushenv [13]

:[12]
push.d 0.4
pop.v.d self.image_alpha
push.d 0.1
pop.v.d self.ss
pushi.e 4229
pop.v.i self.sprite_index
pushi.e 1000
pop.v.i self.depth

:[13]
popenv [12]

:[end]