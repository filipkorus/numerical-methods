function rotation_matrix = rotateMatrix(type, angle)
    angle = angle * pi / 180; % to radians

    if type == 'x'
        rotation_matrix = [1          0           0
                           0 cos(angle) -sin(angle)
                           0 sin(angle)  cos(angle)];
    elseif type == 'y'
        rotation_matrix = [cos(angle)  0  sin(angle)
                           0           1           0
                           -sin(angle) 0  cos(angle)];
    elseif type == 'z'
        rotation_matrix = [cos(angle)  -sin(angle)  0
                           sin(angle)  cos(angle)   0
                           0           0            1];
    else
        fprintf("Invalid input for type")
    end
end
