function draw2(M, nx, ny, nz, plotTitle)

N = 100; % linspace resolution
if nx == 0 && ny == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);

    [xi, yi] = meshgrid(X, Y);
    zi = griddata(M(:, 1), M(:, 2), M(:, 3), xi, yi, 'cubic');

    figure; surf(zi);%plot3(M(:, 1), M(:, 2), M(:, 3), '.');
    title(plotTitle); %hold on; mesh(xi, yi, zi); hold off;
elseif nx == 1 && ny == 0 && nz == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [xi, zi] = meshgrid(X, Z);
    yi = griddata(M(:, 1), M(:, 3), M(:, 2), xi, zi, 'cubic');

    figure; surf(yi); %plot3(M(:, 1), M(:, 2), M(:, 3), '.');
    title(plotTitle); %hold on; mesh(xi, yi, zi); hold off;

elseif nx == 0 && ny == 1 && nz == 0
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [yi, zi] = meshgrid(Y, Z);
    xi = griddata(M(:, 2), M(:, 3), M(:, 1), yi, zi, 'cubic');

    figure; surf(xi); %plot3(M(:, 1), M(:, 2), M(:, 3), '.');
    title(plotTitle); %hold on; mesh(xi, yi, zi); hold off;
else
    %X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    %Y = linspace(min(M(:, 2)), max(M(:, 2)), N);

    %[xi, yi] = meshgrid(X, Y);
    %zi = griddata(M(:, 1), M(:, 2), M(:, 3), xi, yi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); title(plotTitle); %hold on; mesh(xi, yi, zi); hold off;
end
