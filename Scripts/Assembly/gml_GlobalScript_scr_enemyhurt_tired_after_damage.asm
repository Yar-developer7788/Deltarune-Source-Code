.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_enemyhurt_tired_after_damage (locals=0, argc=1)
:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.v arg.argument0
mul.v.v
cmp.v.v LTE
bf [3]

:[2]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_enemyhurt_tired_after_damage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enemyhurt_tired_after_damage
popz.v

:[end]