.localvar 2 arguments

:[0]
push.v self.spintimer
push.e 1
add.i.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 20
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.spintimer

:[2]
push.v self.spintimer
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1286
pop.v.i self.sprite_index
b [10]

:[4]
push.v self.spintimer
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1298
pop.v.i self.sprite_index
b [10]

:[6]
push.v self.spintimer
pushi.e 10
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1291
pop.v.i self.sprite_index
b [10]

:[8]
push.v self.spintimer
pushi.e 15
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1294
pop.v.i self.sprite_index

:[10]
push.v self.mode
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [15]

:[11]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [16]

:[12]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [17]

:[13]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [18]

:[14]
b [19]

:[15]
pushi.e 50
conv.i.v
push.v self.direction
pushi.e 90
sub.i.v
pushi.e 6
add.i.v
push.v 631.y
pushi.e 8
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_scr_fixedorbit(argc=4)
popz.v
push.v self.direction
pushi.e 6
add.i.v
pop.v.v self.direction
b [19]

:[16]
pushi.e 6
conv.i.v
call.i gml_Script_scr_pivotoncenter(argc=1)
popz.v
b [19]

:[17]
pushi.e 6
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
call.i gml_Script_scr_rotatearoundpoint(argc=3)
popz.v
b [19]

:[18]
pushi.e 6
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_scr_orbitaroundpoint(argc=3)
popz.v
b [19]

:[19]
popz.v
push.v self.mode
pushi.e 0
cmp.i.v NEQ
bf [end]

:[20]
push.v self.direction
pop.v.v self.image_angle

:[end]