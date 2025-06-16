.localvar 2 arguments

:[0]
push.v self.lifetimer
push.e 1
add.i.v
pop.v.v self.lifetimer
push.v self.image_index
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 2
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.active
b [6]

:[5]
pushi.e 0
pop.v.i self.active

:[6]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.lifetimer
pushi.e 60
pushi.e 40
conv.i.v
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
not.b
conv.b.i
and.i.i
cmp.i.v GT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]