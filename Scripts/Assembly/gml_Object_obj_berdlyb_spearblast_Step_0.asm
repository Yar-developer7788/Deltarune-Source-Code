.localvar 2 arguments
.localvar 24431 relativeY 11227
.localvar 24432 boxy 11228
.localvar 24433 xpoint 11229

:[0]
push.v self.init
conv.v.b
not.b
bf [end]

:[1]
pushi.e 1
pop.v.b self.init
pushi.e 1
conv.i.v
push.v self.mypath
call.i path_set_kind(argc=2)
popz.v
pushi.e 4
conv.i.v
push.v self.mypath
call.i path_set_precision(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v self.mypath
call.i path_set_closed(argc=2)
popz.v
pushi.e 0
pop.v.i local.relativeY
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
push.v self.mypath
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
pushi.e 30
sub.i.v
push.v self.mypath
call.i path_add_point(argc=4)
popz.v
push.v 872.y
pop.v.v local.boxy
pushi.e 1
pop.v.i self.i

:[2]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [end]

:[3]
pushi.e -150
push.v self.i
mul.v.i
push.v self.x
add.v.v
pop.v.v local.xpoint
push.v self.aim_at_player
conv.v.b
bf [7]

:[4]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
pushloc.v local.relativeY
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local.xpoint
push.v 631.x
pushi.e 10
add.i.v
sub.v.v
pushi.e 150
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 80
push.v self.i
mul.v.i
pushi.e -80
push.v self.i
mul.v.i
call.i random_range(argc=2)
pushloc.v local.boxy
add.v.v
pop.v.v local.relativeY
pushi.e 100
conv.i.v
pushloc.v local.relativeY
pushloc.v local.xpoint
push.v self.mypath
call.i path_add_point(argc=4)
popz.v
push.v 631.y
pushi.e 10
add.i.v
pushloc.v local.relativeY
sub.v.v
push.v 631.x
pushi.e 10
add.i.v
pushloc.v local.xpoint
sub.v.v
call.i abs(argc=1)
div.v.v
pop.v.v local.relativeY
b [17]

:[10]
push.v self.aim_at_player
conv.v.b
bf [13]

:[11]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushloc.v local.relativeY
pushi.e 0
cmp.i.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v 631.y
pushi.e 10
add.i.v
pushloc.v local.relativeY
push.v 631.x
pushi.e 10
add.i.v
pushloc.v local.xpoint
sub.v.v
call.i abs(argc=1)
mul.v.v
add.v.v
pop.v.v local.relativeY
pushi.e 100
conv.i.v
pushi.e 80
push.v self.i
mul.v.i
pushloc.v local.boxy
add.v.v
pushi.e -80
push.v self.i
mul.v.i
pushloc.v local.boxy
add.v.v
pushloc.v local.relativeY
call.i clamp(argc=3)
pushloc.v local.xpoint
push.v self.mypath
call.i path_add_point(argc=4)
popz.v
pushi.e 0
pop.v.i local.relativeY
b [17]

:[16]
pushi.e 100
conv.i.v
pushi.e 80
push.v self.i
mul.v.i
pushi.e -80
push.v self.i
mul.v.i
call.i random_range(argc=2)
pushloc.v local.boxy
add.v.v
pushloc.v local.xpoint
push.v self.mypath
call.i path_add_point(argc=4)
popz.v

:[17]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]