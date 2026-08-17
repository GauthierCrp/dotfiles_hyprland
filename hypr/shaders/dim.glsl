#version 300 es
precision mediump float;

// Ces variables sont fournies nativement par Hyprland
uniform sampler2D tex;
in vec2 v_texcoord;
out vec4 fragColor; // Définition obligatoire de la sortie

void main() {
    // Récupération de la couleur du pixel original
    vec4 color = texture(tex, v_texcoord);

    // Appliquer la réduction de luminosité (multiplier RGB par 0.6 = 60%)
    // On ne touche pas à l'alpha (color.a)
    fragColor = vec4(color.rgb * 0.6, color.a);
}
