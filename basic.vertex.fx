precision highp float;

// Attributes
attribute vec3 position;
attribute vec2 uv;

// Uniforms
uniform mat4 worldViewProjection;
uniform float offset;

// Varying
varying vec2 vUV;

void main(void) {
   gl_Position = worldViewProjection * vec4(position, 1.0);
   vUV = uv;
   vUV.x += offset;
}

// void main(void) {
//    // gl_Position = vec4(position, 1.0);
//    //  gl_Position = worldViewProjection * vec4(position, 1.0);
//     if(offset < 0.25){
//       //  gl_Position = vec4(0.0,0.0,0.0,1.0);
//       gl_Position = vec4(position, 1.0);
//    //  }else if(offset < 0.5){
//    //     gl_Position = vec4(100.0,0.0,0.0,1.0);
//    //  }else if(offset < 0.75){
//    //     gl_Position = vec4(100.0,100.0,1.0,1.0);
//     }else{
//       //  gl_Position = vec4(0.0,100.0,1.0,1.0);
//       gl_Position = worldViewProjection * vec4(position, 1.0);
//     }
//    vUV = uv;
//    // vUV.x += offset;
// }