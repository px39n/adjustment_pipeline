function [] = Ndeal(Left,Right)

    for i=1:length(Right)
        if iscell(Right)
            assignin("caller",sprintf("%s",Left(i)),Right{i});
        else
            assignin("caller",sprintf("%s",Left(i)),Right(i));
        end
    end
end