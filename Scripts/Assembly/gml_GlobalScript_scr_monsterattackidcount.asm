.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_monsterattackidcount (locals=0, argc=1)
:[1]
push.s "ThisAttack"@7065
push.v arg.argument0
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_monsterattacknamecount(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_monsterattackidcount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monsterattackidcount
popz.v

:[end]