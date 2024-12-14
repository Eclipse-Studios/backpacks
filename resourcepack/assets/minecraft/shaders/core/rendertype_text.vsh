#version 150

#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vertexDistance = fog_distance(Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;

    if (Color == vec4(123/255., 123/255., 0, Color.a)) {
    // recolor to custom color
    vertexColor.r = 55.0/255.0;
    vertexColor.g = 55.0/255.0;
    vertexColor.b = 55.0/255.0;
    vec3 newPos = vec3(Position.x, Position.y, Position.z + 200.0);
    gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
}
}