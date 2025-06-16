.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_lerpvar_instance (locals=0, argc=0)
:[1]
pushi.e 924
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__lerpvar
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -15
pushi.e 1
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.varname
pushi.e -15
pushi.e 2
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.pointa
pushi.e -15
pushi.e 3
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.pointb
pushi.e -15
pushi.e 4
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.maxtime
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v GTE
bf [3]

:[2]
pushi.e -15
pushi.e 5
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.easetype

:[3]
pushbltn.v builtin.argument_count
pushi.e 7
cmp.i.v GTE
bf [5]

:[4]
pushi.e -15
pushi.e 6
push.v [array]self.argument
push.v self.__lerpvar
pushi.e -9
pop.v.v [stacktop]self.easeinout

:[5]
push.v self.__lerpvar
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_lerpvar_instance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lerpvar_instance
popz.v

:[end]