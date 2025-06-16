.localvar 2 arguments
.localvar 25068 mercyset 12123

:[0]
push.v self.bardlymercy
call.i ceil(argc=1)
pop.v.v local.mercyset
pushloc.v local.mercyset
push.v 574.bardlymercy
add.v.v
pushi.e 100
cmp.i.v GT
bf [2]

:[1]
pushi.e 100
push.v 574.bardlymercy
sub.v.i
call.i ceil(argc=1)
pop.v.v local.mercyset

:[2]
pushloc.v local.mercyset
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 873
conv.i.v
push.v 576.y
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
push.v 576.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushloc.v local.mercyset
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type

:[4]
push.v 574.bardlymercy
pushloc.v local.mercyset
add.v.v
pop.v.v 574.bardlymercy
pushi.e 873
pushenv [6]

:[5]
push.v 576.x
pop.v.v self.x
push.v 576.y
pushi.e 20
add.i.v
pop.v.v self.y
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[6]
popenv [5]
pushi.e 0
pop.v.i self.bardlymercy

:[end]