#version 330 core

layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aVel;

out float speed;

void main() {
  gl_Position = vec4(aPos, 0.f, 1.f);
  speed = length(aVel);
  // if (outline) {
  //   vec3 pos = aPos * 1.1f;
  //   gl_Position = projection * view * model * vec4(pos, 1.0);
  // } else {
  //   gl_Position = projection * view * model * vec4(aPos, 1.0);
  // } 
}
