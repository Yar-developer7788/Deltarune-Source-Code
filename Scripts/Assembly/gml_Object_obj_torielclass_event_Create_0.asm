.localvar 2 arguments
.localvar 15188 fruit 6864
.localvar 15189 desk_fruit 6865

:[0]
pushi.e 0
pop.v.i global.facing
pushi.e 2973
pop.v.i local.fruit
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2975
pop.v.i local.fruit

:[2]
pushloc.v local.fruit
pushi.e 75
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.desk_fruit
push.i 167498
setowner.e
pushi.e 914
conv.i.v
pushi.e 63
conv.i.v
pushi.e 126
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 116
conv.i.v
pushi.e 107
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 116
conv.i.v
pushi.e 158
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 116
conv.i.v
pushi.e 208
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 145
conv.i.v
pushi.e 107
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 145
conv.i.v
pushi.e 158
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.obj
pushi.e 913
conv.i.v
pushi.e 145
conv.i.v
pushi.e 208
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.obj
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 910
conv.i.v
pushi.e 183
conv.i.v
pushi.e 261
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 8
pop.v.v [array]self.obj

:[4]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2974
conv.i.v
pushi.e 173
conv.i.v
pushi.e 261
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushi.e 8
pop.v.v [array]self.obj

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [11]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.obj
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
pushi.e -1
pushi.e 0
push.v [array]self.obj
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pushloc.v local.desk_fruit
pushi.e -9
pop.v.v [stacktop]self.depth
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [end]

:[12]
pushi.e 902
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [14]

:[13]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[14]
popenv [13]

:[end]