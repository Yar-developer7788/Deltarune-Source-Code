.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_minishakeobj (locals=0, argc=0)
:[1]
pushi.e 231
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shakeobj
push.v self.id
push.v self.shakeobj
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.shakeobj
pushi.e -9
pop.v.i [stacktop]self.shakeamt
pushi.e 1
push.v self.shakeobj
pushi.e -9
pop.v.i [stacktop]self.shakereduct
push.v self.shakeobj
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_minishakeobj
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_minishakeobj
popz.v

:[end]