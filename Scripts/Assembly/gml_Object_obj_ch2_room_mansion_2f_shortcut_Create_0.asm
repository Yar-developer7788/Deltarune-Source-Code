.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.key
pushi.e -1
pop.v.i self.dooropen
pushi.e 0
pop.v.b self.keyfloat
pushi.e 0
pop.v.i self.floattimer
pushi.e 0
pop.v.b self.keysparkle
pushi.e 0
pop.v.i self.sparkletimer
pushi.e 0
pop.v.b self.fadeplatters
pushi.e 0
pop.v.i self.keyXPos
pushi.e 0
pop.v.i self.keyYPos
pushi.e 0
pop.v.b self.make_forcefield
pushi.e -4
pop.v.i self.forcefield
pushi.e -5
pushi.e 346
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 105
conv.i.v
pushi.e 40
conv.i.v
pushi.e 221
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bookcase
pushi.e 2892
push.v self.bookcase
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.bookcase
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 261
conv.i.v
pushi.e 230
conv.i.v
pushi.e 210
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.monty
pushi.e 5
push.v self.monty
pushi.e -9
pop.v.i [stacktop]self.saucercount

:[end]