#version 330

#ifndef IS_SEE_THROUGH
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:sample_lightmap.glsl>
#endif

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
#ifndef IS_SEE_THROUGH
in ivec2 UV2;
uniform sampler2D Sampler2;
out float sphericalVertexDistance;
out float cylindricalVertexDistance;
#endif

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

#ifndef IS_SEE_THROUGH
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color * sample_lightmap(Sampler2, UV2);
#else
    vertexColor = Color;
#endif

if (Color == vec4(123/255., 123/255., 0, Color.a)) {
    // recolor to custom color
    vertexColor.r = 55.0/255.0;
    vertexColor.g = 55.0/255.0;
    vertexColor.b = 55.0/255.0;
    vec3 newPos = vec3(Position.x, Position.y, Position.z + 200.0);
    gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
}
}