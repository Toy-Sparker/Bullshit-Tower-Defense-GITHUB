image_xscale += .5;
image_yscale += .5;
image_angle += 10;
image_alpha -= .05;
if(image_alpha <= 0) instance_destroy();
with(instance_create_layer(x,y,"Projectiles",oOsinTrail))
{
image_alpha = .25;
image_angle = other.image_angle;
image_xscale = other.image_xscale - .5;
image_yscale = other.image_yscale - .5;
}