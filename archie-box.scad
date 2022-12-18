include <archie-base.scad>;

depth = 160;
box = 160;
height = 50;
wall_thick = 7;

difference() {
    difference() {
        base_box(box, depth, height);
    }
     translate([wall_thick, wall_thick, wall_thick]) roundedcube([box-2*wall_thick,depth-2*wall_thick,height-wall_thick], false, 1,"zmin");
}
