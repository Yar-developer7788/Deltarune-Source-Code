.localvar 2 arguments

:[0]
b [28]

> gml_Script_scr_endcombat (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i global.fighting
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [4]

:[2]
pushglb.v global.specialbattle
pushi.e 2
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [27]

:[6]
pushglb.v global.specialbattle
pushi.e 2
cmp.i.v EQ
bf [20]

:[7]
pushi.e 82
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.cutscene
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[9]
popenv [8]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [11]

:[10]
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[11]
popenv [10]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[13]
popenv [12]
pushi.e 276
pushenv [15]

:[14]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 30
conv.i.v
pushi.e 82
conv.i.v
call.i gml_Script_scr_pan_to_obj(argc=2)
popz.v
pushi.e 82
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 276
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.visible

:[19]
popenv [18]

:[20]
pushi.e 871
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 392
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 360
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 371
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.i 25790502
setowner.e
pushi.e 82
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
call.i instance_destroy(argc=0)
popz.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_scr_endcombat
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_endcombat
popz.v

:[end]