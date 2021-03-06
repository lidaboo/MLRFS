function F = offsetFeatures(P,offsets)

% ----------------------------------------------------------------------
% length(offsets)*8*nLabels features
% ----------------------------------------------------------------------
F = [];
for r = offsets%[5 9 13]
    for a = 0:pi/4:2*pi-pi/4
        v = r*[cos(a) sin(a)];
        T = imtranslate(P,v,'OutputView','same');
        F = cat(3,F,T);
    end
end

end