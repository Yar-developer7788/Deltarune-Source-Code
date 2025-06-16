.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.screenChangeTrigger
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.screenChangeTrigger

:[5]
push.v self.screenChangeTrigger
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2725
push.v self.dumbscreen
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.dumbscreen
pushi.e -9
pop.v.d [stacktop]self.image_speed
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

:[7]
pushi.e 868
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
push.v self.tasquescreen1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[9]
push.v self.tasquescreen1
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_afterimage(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
push.v self.tasquescreen2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[13]
push.v self.tasquescreen2
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_afterimage(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[end]