#version 120
#define LOWPREC 
#define lowp
#define mediump
#define highp
#define precision
// Uniforms look like they're shared between vertex and fragment shaders in GLSL, so we have to be careful to avoid name clashes

uniform sampler2D gm_BaseTexture;

uniform bool gm_PS_FogEnabled;
uniform vec4 gm_FogColour;
uniform bool gm_AlphaTestEnabled;
uniform float gm_AlphaRefValue;

void DoAlphaTest(vec4 SrcColour)
{
	if (gm_AlphaTestEnabled)
	{
		if (SrcColour.a <= gm_AlphaRefValue)
		{
			discard;
		}
	}
}

void DoFog(inout vec4 SrcColour, float fogval)
{
	if (gm_PS_FogEnabled)
	{
		SrcColour = mix(SrcColour, gm_FogColour, clamp(fogval, 0.0, 1.0)); 
	}
}

#define _YY_GLSL_ 1
#define Transparent vec4(.0,.0,.0,.0)
#define Tolerance 0.004 
//If you feel like your colors should be matching but aren't, increase this number a bit.

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_palTexture;
uniform vec4 u_Uvs;
uniform float u_paletteId;
uniform vec2 u_pixelSize;

vec4 findAltColor(vec4 inCol, vec2 corner)
{
    if(inCol.a == 0.) return Transparent;
    
    float dist;
    vec2 testPos;
    vec4 leftCol;
    for(float i = corner.y; i < u_Uvs.w; i+=u_pixelSize.y )
    {
			testPos = vec2(corner.x,i);
      leftCol = texture2D( u_palTexture, testPos);
        
			dist = distance(leftCol,inCol);

			if(dist < Tolerance)
      {
				testPos = vec2(corner.x + u_pixelSize.x * floor(u_paletteId + 1.0), i);
        return mix(texture2D(u_palTexture, vec2(testPos.x - u_pixelSize.x, testPos.y)), texture2D(u_palTexture, testPos), fract(u_paletteId));
      }
    }
    return inCol;
}

void main()
{
	vec4 col = texture2D( gm_BaseTexture, v_vTexcoord);
	DoAlphaTest( col );
	col = findAltColor(col, u_Uvs.xy);
	gl_FragColor = v_vColour * col;
}
