.localvar 2 arguments

:[0]
b [20]

> gml_Script_scr_maincharacters_actors (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.actor_count
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
push.v 82.sprite_index
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 82.depth
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 82
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 0
pop.v.i self.__jj

:[4]
push.v self.__jj
pushglb.v global.cinstance
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [19]

:[5]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[6]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
push.s "susie"@70
cmp.s.v EQ
bf [10]

:[7]
push.v self.actor_count
push.e 1
add.i.v
pop.v.v self.actor_count
push.v self.__jj
pushi.e 1
add.i.v
pop.v.v self.su
pushi.e 893
conv.i.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]

:[10]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [14]

:[11]
push.v self.actor_count
push.e 1
add.i.v
pop.v.v self.actor_count
push.v self.__jj
pushi.e 1
add.i.v
pop.v.v self.ra
pushi.e 893
conv.i.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.visible

:[13]
popenv [12]

:[14]
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
push.s "noelle"@74
cmp.s.v EQ
bf [18]

:[15]
push.v self.actor_count
push.e 1
add.i.v
pop.v.v self.actor_count
push.v self.__jj
pushi.e 1
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -5
push.v self.__jj
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]

:[18]
push.v self.__jj
push.e 1
add.i.v
pop.v.v self.__jj
b [4]

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_maincharacters_actors
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_maincharacters_actors
popz.v

:[end]