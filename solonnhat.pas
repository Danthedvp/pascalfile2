var
    h1,h2:text;
    n,sum:longint;
    count,count_lgh,i:integer;

begin
    assign(h1,'GAMP.INP');
    assign(h2,'GAME.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,n);
    while n <> 0 do begin
        if n MOD 2 = 1 then INC(count);
        n:= n DIV 2;
        INC(count_lgh);
    end;

    sum:= 1;
    for i:= 1 to count_lgh - count do
    begin
        sum:= sum * 2;
    end;

    for i:= 1 to count - 1 do
    begin
        sum:= sum + (sum * 2);
    end;

    write(h2,sum);

    close(h1);
    close(h2);
end.
