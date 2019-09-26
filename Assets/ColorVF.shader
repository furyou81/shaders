Shader "Unlit/ColorVF"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float4 color: COLOR;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.color.r = (v.vertex.x +6) / 20;
                o.color.g = (v.vertex.z +6) / 20;
                o.color.b = (1 - v.vertex.x +6) / 20;
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
               // fixed4 col = fixed4(0,1,0,1);
                fixed4 col = i.color;
                return col;
            }
            ENDCG
        }
    }
}
