function [N,M,Im] = Load8bitImage(Filename)
    fp = fopen(Filename,"rb");
    
    N = fread(fp,1,'uint16'); % primeiros 2 bytes
    M = fread(fp,1,'uint16'); % primeiros 2 bytes

    Im = uint8(fread(fp,[N,M],'uint8')); % primeiros 2 bytes

end