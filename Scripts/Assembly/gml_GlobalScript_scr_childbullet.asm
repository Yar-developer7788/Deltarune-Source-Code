.localvar 2 arguments
.localvar 10358 __child 2485
.localvar 10359 __parent 2486

:[0]
b [20]

> gml_Script_scr_childbullet (locals=2, argc=0)
:[1]
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i gml_Script_instance_create(argc=3)
pop.v.v local.__child
pushbltn.v builtin.argument_count
pushi.e 4
cmp.i.v EQ
bf [3]

:[2]
pushi.e -15
pushi.e 3
push.v [array]self.argument
b [4]

:[3]
push.v self.id

:[4]
pop.v.v local.__parent
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.damage
pushi.e -1
cmp.i.v NEQ
bf [6]

:[5]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.damage
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.damage

:[6]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazepoints
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazepoints
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.grazepoints

:[8]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.timepoints
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.timepoints
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.timepoints

:[10]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.inv
pushi.e -1
cmp.i.v NEQ
bf [12]

:[11]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.inv
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.inv

:[12]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.target
pushi.e -1
cmp.i.v NEQ
bf [14]

:[13]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.target
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.target

:[14]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazed
pushi.e -1
cmp.i.v NEQ
bf [16]

:[15]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazed
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.grazed

:[16]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazetimer
pushi.e -1
cmp.i.v NEQ
bf [18]

:[17]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.grazetimer
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.grazetimer

:[18]
pushloc.v local.__parent
pushi.e -9
push.v [stacktop]self.element
pushloc.v local.__child
pushi.e -9
pop.v.v [stacktop]self.element
pushloc.v local.__child
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_childbullet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_childbullet
popz.v

:[end]