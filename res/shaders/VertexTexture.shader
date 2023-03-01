#version 330 core
layout(location = 0) in vec4 position;
layout(location = 1) in vec3 ourColor;
layout(location = 2) in vec2 texCoord;

out vec2 v_TexCoord;
out vec3 v_Color;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * position;
	v_TexCoord = texCoord;
	v_Color = ourColor;
};