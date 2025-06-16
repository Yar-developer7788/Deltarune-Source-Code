.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.image_alpha
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 276.name
push.s "noelle"@74
cmp.s.v EQ
b [3]

:[2]
push.e 0

:[3]
not.b
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v GTE
bf [8]

:[7]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1231
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[11]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.75
cmp.d.v GTE
bf [13]

:[12]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1231
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[16]
pushi.e 0
pop.v.i self.fakeNoelleActive
pushi.e 0
pop.v.i self.fakeNoelle

:[end]