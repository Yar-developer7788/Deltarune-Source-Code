.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
push.d 0.15
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.image_alpha
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [3]

:[2]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [11]

:[5]
pushi.e 180
pop.v.i global.turntimer
push.v self.myspawner
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.i 231869
setowner.e
push.s "ThisAttack"@7065
push.v self.spawntype
call.i string(argc=1)
add.v.s
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.myspawner
push.v self.spawntype
push.v self.myspawner
pushi.e -9
pop.v.v [stacktop]self.type
pushi.e 10
push.v self.myspawner
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e -5
pushi.e 27
push.v [array]self.tempflag
push.v self.myspawner
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[10]
pushi.e 1
pop.v.i self.attacked

:[11]
b [13]

:[12]
push.d 0.5
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.image_speed

:[13]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
not.b
bf [end]

:[14]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.attacked

:[end]