.localvar 2 arguments

:[0]
push.i 231131
setowner.e
push.v self.kris_save_hp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 231132
setowner.e
push.v self.kris_save_max_hp
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 231979
setowner.e
push.s "obj_gigaqueen_enemy_slash_Destroy_0_gml_4_0"@27477
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.charname

:[end]