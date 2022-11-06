function draw(M, axis, angle, plotTitle)

if axis == 'x'
    nx = isOddMultipleOf90(angle);
    ny = 0;
    nz = 0;
elseif axis == 'y'
    ny = isOddMultipleOf90(angle);
    nx = 0;
    nz = 0;
else
    nx = 0;
    ny = 0;
    if abs(angle) > 0
        nz = 1;
    else
        nz = 0;
    end
end

N = 150; % linspace resolution
if nx == 0 && ny == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);

    [xi, yi] = meshgrid(X, Y);
    zi = griddata(M(:, 1), M(:, 2), M(:, 3), xi, yi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); title(plotTitle); hold on; mesh(xi, yi, zi); hold off;
elseif nx == 1 && ny == 0 && nz == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [xi, zi] = meshgrid(X, Z);
    yi = griddata(M(:, 1), M(:, 3), M(:, 2), xi, zi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); title(plotTitle); hold on; mesh(xi, yi, zi); hold off;

elseif nx == 0 && ny == 1 && nz == 0
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [yi, zi] = meshgrid(Y, Z);
    xi = griddata(M(:, 2), M(:, 3), M(:, 1), yi, zi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); title(plotTitle); hold on; mesh(xi, yi, zi); hold off;
else
    %X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    %Y = linspace(min(M(:, 2)), max(M(:, 2)), N);

    %[xi, yi] = meshgrid(X, Y);
    %zi = griddata(M(:, 1), M(:, 2), M(:, 3), xi, yi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); title(plotTitle); %hold on; mesh(xi, yi, zi); hold off;
end
