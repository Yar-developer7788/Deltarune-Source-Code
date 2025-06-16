.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.showArea
pushi.e 0
pop.v.i self.image_alpha
push.i 777777
pop.v.i self.depth
pushi.e 0
pop.v.i self.keepHidden
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.cancel
pushi.e 0
pop.v.i self.onlyActiveIfBulletsExist
pushi.e 0
pop.v.i self.onlyActiveIfSpecialObjectExists
pushi.e 0
pop.v.i self.specialObject
push.v self.id
pop.v.v self.checkid
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.ignorebuffer
pushi.e 244
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 244
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[5]
pushi.e 46
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 46
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
push.v self.showArea
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.image_alpha

:[9]
push.v self.showArea
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.d 0.1
pop.v.d self.image_alpha

:[14]
push.v self.id
pop.v.v self.checkid

:[end]