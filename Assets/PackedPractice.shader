Shader "Hollistic/PackedPractice"
{
    Properties
    {
        _myColor ("Color", Color) = (1,1,1,1)
    }
    SubShader
    {
        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert

        struct Input
        {
            float2 uv_MainTex;
        };
      fixed4 _myColor;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo.x = _myColor.x;
            o.Emission = _myColor;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
