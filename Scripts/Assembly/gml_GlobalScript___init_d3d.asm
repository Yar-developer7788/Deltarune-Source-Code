.localvar 2 arguments

:[0]
b [2]

> gml_Script___init_d3d (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.b global.__d3d
pushi.e 0
pop.v.i global.__d3dDepth
call.i camera_create(argc=0)
pop.v.v global.__d3dCamera
pushi.e -1
pop.v.i global.__d3dPrimKind
pushi.e -1
pop.v.i global.__d3dPrimTex
call.i vertex_create_buffer(argc=0)
pop.v.v global.__d3dPrimBuffer
call.i vertex_format_begin(argc=0)
popz.v
call.i vertex_format_add_position_3d(argc=0)
popz.v
call.i vertex_format_add_normal(argc=0)
popz.v
call.i vertex_format_add_colour(argc=0)
popz.v
call.i vertex_format_add_texcoord(argc=0)
popz.v
call.i vertex_format_end(argc=0)
pop.v.v global.__d3dPrimVF
push.i 72715470
setowner.e
pushi.e 0
conv.b.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__d3dDeprecatedMessage
exit.i

:[2]
push.i [function]gml_Script___init_d3d
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__init_d3d
popz.v

:[end]