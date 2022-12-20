include <archie-base.scad>;

depth = 170;
box = 170;
height = 20;

difference() {
    difference() {
        base_box(box, depth, height);
    }
}
