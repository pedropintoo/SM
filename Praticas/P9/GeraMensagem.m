function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
    prob = f/sum(f);
    
    randResult = randsample(1:length(nBits), CompMesg, true, prob);
    NumBits = sum(nBits(randResult));
    NumBPS = NumBits/CompMesg;

end