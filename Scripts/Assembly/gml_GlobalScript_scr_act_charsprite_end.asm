.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_act_charsprite_end (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._charactsprite
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 371
pushenv [9]

:[7]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.state
push.i 61180139
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[9]
popenv [7]
exit.i

:[10]
push.i [function]gml_Script_scr_act_charsprite_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_act_charsprite_end
popz.v

:[end]