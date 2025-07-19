include <archie-base.scad>;

depth = 170;
box = 170;
height = 20;

hole_depth = 12;
hole_width = 4;

difference() {
    difference() {
        base_box(box, depth, height);
        translate([150,0,10]) cube([hole_width,depth,hole_depth], false);
        translate([140,0,10]) cube([hole_width,depth,hole_depth], false);
    }
    translate([7,7,10]) roundedcube([box - 14 -30,depth - 14,hole_depth], false, 1, "all");
}
