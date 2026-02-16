$fa = 1;
$fs = 0.4;

width = 26;
height = 170;
holeDiameter = 19;
thickness = 3;

difference () {
    // тело линейки
    color("green")
    translate([-thickness, -thickness, 0])
    cube([height + thickness, width + 2 * thickness, 2 * thickness]);
    
    // вырез под ленточку
    points = [
        [0, 0],
        [height, 0],
        [height, width],
        [width, width]
    ];

    // вырез под ленточку
    translate([0, 0, thickness])
    linear_extrude(height = thickness)
        polygon(points);
        
    // отверстие под наковальню
    translate([height - 7, width/2, 0])
    cylinder(2 * thickness, d = holeDiameter);
}

