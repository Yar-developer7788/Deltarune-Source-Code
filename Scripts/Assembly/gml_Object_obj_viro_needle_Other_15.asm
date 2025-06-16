.localvar 2 arguments
.localvar 10813 sw 10375

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.b self.spawning
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[5]
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.spawnVirus
pushi.e 0
pop.v.i self.active
pushi.e 1064
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.sw
pushi.e 100
pushloc.v local.sw
pushi.e -9
pop.v.i [stacktop]self.maxradius
pushi.e 10
pushloc.v local.sw
pushi.e -9
pop.v.i [stacktop]self.growtime
push.v self.poisoncolor
pushloc.v local.sw
pushi.e -9
pop.v.v [stacktop]self.color

:[end]