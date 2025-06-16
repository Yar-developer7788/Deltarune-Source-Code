.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_battle (locals=0, argc=5)
:[1]
push.v arg.argument1
pop.v.v global.specialbattle
push.v arg.argument0
pop.v.v global.encounterno
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 2
cmp.i.v NEQ
bf [3]

:[2]
push.i 63276836
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 63277968
setowner.e
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic

:[3]
pushi.e 868
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 275
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 31689617
setowner.e
push.v arg.argument2
pushi.e -1
pushi.e 0
pop.v.v [array]self.__enemymarker
push.v arg.argument3
pushi.e -1
pushi.e 1
pop.v.v [array]self.__enemymarker
push.v arg.argument4
pushi.e -1
pushi.e 2
pop.v.v [array]self.__enemymarker
pushi.e 0
pop.v.i self.__ien

:[4]
push.v self.__ien
pushi.e 3
cmp.i.v LT
bf [12]

:[5]
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v NEQ
bf [11]

:[6]
pushi.e -1
push.v self.__ien
conv.v.i
push.v [array]self.__enemymarker
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monsterinstancetype
call.i object_get_sprite(argc=1)
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monstermakex
pushi.e 300
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
push.v self.__ien
conv.v.i
pop.v.v [array]self.__enemymarker
push.i 63179269
setowner.e
push.v self.__ien
neg.v
pushi.e -1
push.v self.__ien
conv.v.i
push.v [array]self.__enemymarker
pushi.e -9
pop.v.v [stacktop]self.depth

:[8]
push.i 63277970
setowner.e
push.v self.__ien
pushi.e -1
push.v self.__ien
conv.v.i
push.v [array]self.__enemymarker
pushi.e -9
pop.v.v [stacktop]self.__ien
pushi.e -1
push.v self.__ien
conv.v.i
push.v [array]self.__enemymarker
pushi.e -9
pushenv [10]

:[9]
pushi.e 20
conv.i.v
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.__ien
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 1096
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__doom
push.v self.id
push.v self.__doom
pushi.e -9
pop.v.v [stacktop]self.target
push.i 63179265
setowner.e
pushi.e 25
conv.i.v
push.v self.__doom
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm

:[10]
popenv [9]

:[11]
push.v self.__ien
push.e 1
add.i.v
pop.v.v self.__ien
b [4]

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_battle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_battle
popz.v

:[end]