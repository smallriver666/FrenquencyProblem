cl_1 = 1000;

Point(1) = {40000, 40000, -40000, cl_1};
Point(2) = {40000, 40000, 40000, cl_1};
Point(3) = {-40000, 40000, 40000, cl_1};
Point(4) = {-40000, 40000, -40000, cl_1};
Point(5) = {-40000, -40000, -40000, cl_1};
Point(6) = {-40000, -40000, 40000, cl_1};
Point(7) = {40000, -40000, 40000, cl_1};
Point(8) = {40000, -40000, -40000, cl_1};

Line(1) = {4, 5};
Line(2) = {5, 8};
Line(3) = {8, 7};
Line(4) = {7, 6};
Line(5) = {6, 5};
Line(6) = {6, 3};
Line(7) = {3, 4};
Line(8) = {4, 1};
Line(9) = {1, 8};
Line(10) = {7, 2};
Line(11) = {2, 1};
Line(12) = {2, 3};

Line Loop(32) = {12, -6, -4, 10};
Plane Surface(32) = {32};
Line Loop(34) = {5, 2, 3, 4};
Plane Surface(34) = {34};
Line Loop(36) = {3, 10, 11, 9};
Plane Surface(36) = {36};
Line Loop(38) = {6, 7, 1, -5};
Plane Surface(38) = {38};
Line Loop(40) = {7, 8, -11, 12};
Plane Surface(40) = {40};
Line Loop(42) = {8, 9, -2, -1};
Plane Surface(42) = {42};

Surface Loop(1) = {32, 34, 36, 38, 40, 42};
Volume(1) = {1};

Physical Surface(105) = {42, 32, 34, 36, 38, 40};
Physical Volume(1) = {1};

// specify gmsh version 
Mesh.MshFileVersion = 2.2;


