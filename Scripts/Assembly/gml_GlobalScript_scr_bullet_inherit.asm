.localvar 2 arguments

:[0]
b [18]

> gml_Script_scr_bullet_inherit (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [17]

:[2]
push.v self.damage
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
push.v self.damage
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.damage

:[4]
push.v self.grazepoints
pushi.e -1
cmp.i.v NEQ
bf [6]

:[5]
push.v self.grazepoints
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.grazepoints

:[6]
push.v self.timepoints
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
push.v self.timepoints
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.timepoints

:[8]
push.v self.inv
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
push.v self.inv
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.inv

:[10]
push.v self.target
pushi.e -1
cmp.i.v NEQ
bf [12]

:[11]
push.v self.target
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.target

:[12]
push.v self.grazed
pushi.e -1
cmp.i.v NEQ
bf [14]

:[13]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.grazed

:[14]
push.v self.grazetimer
pushi.e -1
cmp.i.v NEQ
bf [16]

:[15]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.grazetimer

:[16]
push.v self.element
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.element

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_bullet_inherit
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bullet_inherit
popz.v

:[end]