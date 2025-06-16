.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterattackname
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pop.v.v self.sameattack
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [9]

:[2]
push.v self.creator
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.sameattack
pushi.e 1
sub.i.v
pop.v.v self.sameattacker
b [9]

:[4]
push.v self.creator
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
push.v self.sameattack
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.creator
b [8]

:[7]
pushi.e -5
pushi.e 0
push.v [array]self.monsterattackname
pushi.e -5
pushi.e 1
push.v [array]self.monsterattackname
cmp.v.v EQ
conv.b.v

:[8]
pop.v.v self.sameattacker

:[9]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.minx
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx

:[11]
pushi.e 1
pop.v.i self.init

:[12]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [end]

:[13]
push.v self.btimer
pushi.e 100
cmp.i.v EQ
bf [15]

:[14]
pushi.e 612
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 615
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 750
pop.v.i global.turntimer

:[15]
pushi.e 612
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
pushi.e 1
pop.v.i global.turntimer

:[end]