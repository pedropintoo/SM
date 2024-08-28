function Save8bitImage(Filename,Image)
    fp = fopen(Filename,'wb');

    N = uint16(size(Image,1));
    M = uint16(size(Image,2));

    fwrite(fp,N,'uint16'); % Primeiros 2 bytes
    fwrite(fp,M,'uint16'); % 2 bytes seguintes
    fwrite(fp,Image,'uint8'); % restantes bytes
    
    fclose(fp);
end