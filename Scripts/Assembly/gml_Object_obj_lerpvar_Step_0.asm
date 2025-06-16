.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [16]

:[1]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v self.pointa
call.i is_string(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.varname
push.v self.target
call.i variable_instance_get(argc=2)
pop.v.v self.pointa

:[4]
pushi.e 1
pop.v.i self.init

:[5]
push.v self.time
push.e 1
add.i.v
pop.v.v self.time
push.v self.easetype
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.time
push.v self.maxtime
div.v.v
push.v self.pointb
push.v self.pointa
call.i lerp(argc=3)
push.v self.varname
push.v self.target
call.i variable_instance_set(argc=3)
popz.v
b [13]

:[7]
push.v self.easeinout
push.s "out"@14331
cmp.s.v EQ
bf [9]

:[8]
push.v self.easetype
push.v self.time
push.v self.maxtime
div.v.v
push.v self.pointb
push.v self.pointa
call.i gml_Script_lerp_ease_out(argc=4)
push.v self.varname
push.v self.target
call.i variable_instance_set(argc=3)
popz.v

:[9]
push.v self.easeinout
push.s "in"@9785
cmp.s.v EQ
bf [11]

:[10]
push.v self.easetype
push.v self.time
push.v self.maxtime
div.v.v
push.v self.pointb
push.v self.pointa
call.i gml_Script_lerp_ease_in(argc=4)
push.v self.varname
push.v self.target
call.i variable_instance_set(argc=3)
popz.v

:[11]
push.v self.easeinout
push.s "inout"@30031
cmp.s.v EQ
bf [13]

:[12]
push.v self.easetype
push.v self.time
push.v self.maxtime
div.v.v
push.v self.pointb
push.v self.pointa
call.i gml_Script_lerp_ease_inout(argc=4)
push.v self.varname
push.v self.target
call.i variable_instance_set(argc=3)
popz.v

:[13]
push.v self.time
push.v self.maxtime
cmp.v.v GTE
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
b [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]