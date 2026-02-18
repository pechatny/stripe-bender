$fa = 1;
$fs = 0.4;

width = 26;
height = 170;
holeDiameter = 18.2;
thickness = 3;
metalStandThickness = 8;

difference () {
    // тело линейки
    color("green")
    translate([-thickness, -thickness, 0])
    cube([height + thickness, width + 2 * thickness, thickness + metalStandThickness]);
    
    // вырез под ленточку
    points = [
        [0, 0],
        [height, 0],
        [height, width],
        [width, width]
    ];

    // вырез под ленточку
    translate([0, 0, metalStandThickness])
    linear_extrude(height = thickness)
        polygon(points);
        
    // отверстие под наковальню
    translate([height - 7, width/2, 0])
    cylinder(metalStandThickness - 1, d = holeDiameter);

    // отверстие для подавателя бумаги
    feederWidth = 10;
    feederThickness = 1;
    color("red")
    // translate([height - (feederWidth/2) - 7, 0, feederThickness])

    translate([height - (feederWidth/2) - 7, -thickness, metalStandThickness - feederThickness])
        cube([feederWidth, width + 2*thickness, feederThickness]);

}

// прижималка 1
pressThickness = 3;
translate([height - pressThickness, 0, metalStandThickness + thickness - 1]) {
    cube([pressThickness, width, 1]);
}

// прижималка 2
press2Shift = 40;
color("red")
translate([height - pressThickness - press2Shift, 0, metalStandThickness + thickness - 1]) {
    cube([pressThickness, width, 1]);
}

