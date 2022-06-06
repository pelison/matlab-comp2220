clear; clc;
numberDiamaters=input('number of diameters');
mininumDiameter=input('minimum diameter');
maximumDiameter=input('maximum diameter');
numberDensities=input('number of densities');
minimumDensity=input('minimum density');
maximumDensity=input('maximum density');
numberLevels=input('number of water levels');
mass=0;
diameter=linspace(mininumDiameter,maximumDiameter,numberDiamaters);
density=linspace(minimumDensity,maximumDensity,numberDensities);

for i=1:numel(diameter)
    fprintf('\nTank Diameter = %.1f meters\nrho/H \n',diameter(i));
    init=diameter(i)/numberLevels;
    level=linspace(init,diameter(i),numberLevels);
    levelPrint=sprintf('%.1f\t\t\t',level);
    fprintf('\t\t\t%s\n\n',levelPrint)
    fprintf('---------\n');
    for x=1:numel(density)
        fprintf('%4d|',density(x));
        for y=1:numel(level)
            radius=diameter(i)/2;
            height=level(y);
            volume=(pi*height^2*(3*radius-height))/3;
            mass(x,y)=density(x)*volume;
        end
        fprintf('\n');
    end
    fprintf('\n');
end