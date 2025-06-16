.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_bullet_init (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer
pushi.e 1
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.target
pushi.e 60
pop.v.i self.inv
pushi.e 10
pop.v.i self.damage
pushi.e 0
pop.v.i self.element
pushi.e 1
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.timepoints
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.updateimageangle
exit.i

:[2]
push.i [function]gml_Script_scr_bullet_init
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bullet_init
popz.v

:[end]