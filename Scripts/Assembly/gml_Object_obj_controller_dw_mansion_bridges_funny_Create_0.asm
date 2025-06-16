.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.saved
pushi.e 0
pop.v.i self.swatchfriend
pushi.e 0
pop.v.i self.swatchLines
pushi.e 0
pop.v.i self.spawnVaseTrig
pushi.e 0
pop.v.i self.vaseSpawned
pushi.e 0
pop.v.i self.vase
pushi.e 0
pop.v.i self.vaseCracked
pushi.e -1
pop.v.i self.vaseCrackedCon
pushi.e 0
pop.v.i self.friendlySwatch
pushi.e 0
pop.v.i self.enemySwatch
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.b self.visible
pushi.e -100
pop.v.i self.x
pushi.e -100
pop.v.i self.y
pushi.e -5
pushi.e 376
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 129
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchfriend
pushi.e 1225
push.v self.swatchfriend
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.swatchfriend
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 0
push.v self.swatchfriend
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.swatchfriend
pushi.e -9
pop.v.i [stacktop]self.con

:[2]
pushi.e -5
pushi.e 376
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 103
conv.i.v
pushi.e 140
conv.i.v
pushi.e 1280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.friendlySwatch
pushi.e 1225
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.friendlySwatch
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 1273
pushenv [6]

:[4]
push.v self.x
pushi.e 1550
cmp.i.v GT
bf [6]

:[5]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[6]
popenv [4]

:[end]