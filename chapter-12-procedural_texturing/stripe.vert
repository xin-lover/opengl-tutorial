#version 330 core

layout(location=0) in vec3 iPos;
layout(location=1) in vec2 iTexcoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

out float texcoord;

void main()
{
	texcoord = iTexcoords.t;
	gl_Position = proj * view * model * vec4(iPos,1);
}
