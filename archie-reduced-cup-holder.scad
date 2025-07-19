include <archie-base.scad>;

thick = 5;
depth = 40;
box = 30;
height = 30;
dm = 100 + 2 * thick;

$fn = 150;
difference()
{
	union()
	{
		difference()
		{
			translate([ dm / 2 - thick * 2, -depth / 2, 0 ])
                base_box(box, depth, height);
			translate([ 0, 0, thick ])
                cylinder(h = height - thick + 1, d = dm - 2 * thick);
		}
		difference()
		{
			cylinder(h = height, d = dm);
			translate([ 0, 0, thick ])
                cylinder(h = height - thick + 1, d = dm - 2 * thick);
		}

		rotate_extrude(angle = 360)
		{
			translate([ (dm - thick) / 2, height ])
                circle(d = thick);
		}
	}
    
    translate([-dm/2,0,height+2*thick])
        rotate([90,00,90])
            resize([35,60]) 
                linear_extrude(thick*2) circle(height);
}
