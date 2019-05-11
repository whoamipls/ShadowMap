precision highp float;

varying vec2 vUV;

uniform sampler2D textureSampler;

void main(void) {
    gl_FragColor = texture2D(textureSampler, vUV);
   //  gl_FragColor.r = 0.0;
   //  gl_FragColor.g = 1.0;
   //  gl_FragColor.b = 0.0;
   //  gl_FragColor.a = 0.5;
}