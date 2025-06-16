.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.enemyCount
pushi.e 0
pop.v.i self.screenChangeTrigger
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 263
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dumbscreen
pushi.e 3
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 999
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.tasquecon

:[2]
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 263
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dumbscreen
pushi.e 2725
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.dumbscreen
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 999
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.tasquecon
pushi.e 999
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.extspawnflag
pushi.e 133
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dumbread
pushi.e 2
pop.v.i self.screenChangeTrigger

:[4]
pushi.e 263
conv.i.v
pushi.e 340
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tasquescreen1
pushi.e 1
push.v self.tasquescreen1
pushi.e -9
pop.v.i [stacktop]self.extspawnflag
pushi.e 9
push.v self.tasquescreen1
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 263
conv.i.v
pushi.e 540
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tasquescreen2
pushi.e 2
push.v self.tasquescreen2
pushi.e -9
pop.v.i [stacktop]self.extspawnflag
pushi.e 9
push.v self.tasquescreen2
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e -5
pushi.e 539
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[5]
pushi.e 11
push.v self.tasquescreen1
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 11
push.v self.tasquescreen2
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e -5
pushi.e 539
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [7]

:[6]
pushi.e -5
pushi.e 539
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [end]

:[9]
pushi.e 240
conv.i.v
pushi.e 386
conv.i.v
pushi.e 564
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enem1
pushi.e 21
push.v self.enem1
pushi.e -9
pop.v.i [stacktop]self.pacetype
pushi.e 240
conv.i.v
pushi.e 586
conv.i.v
pushi.e 564
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enem2
pushi.e 22
push.v self.enem2
pushi.e -9
pop.v.i [stacktop]self.pacetype

:[end]