var
    i,n,iter:integer;
    h1,h2:text;
    cantrai,canphai:array[0..1000] of integer;

begin
    assign(h1,'WEIGHTS.INP');
    assign(h2,'WEIGHTS.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,n);
    if n MOD 3 = 2 then begin INC(n); canphai[0]:= 1  end
    else if n MOD 3 = 1 then begin cantrai[0]:= 1; DEC(n); end;

    i:= 1;
    n:= n DIV 3;
    while (n >= 3) do
    begin
        if n MOD 3 = 2 then
        begin
            canphai[i]:= 1;
            INC(n);
        end;
	cantrai[i]:= n MOD 3;
	cantrai[i + 1]:= n DIV 3;

        INC(i);
        n:= n DIV 3;
    end;
    if n MOD 3 = 2 then begin cantrai[i + 1]:= 1; cantrai[i]:= 0; canphai[i]:= 1; end;
    INC(i);

    for iter:= 0 to i do
    begin
        if cantrai[iter] <> 0 then begin write(h2,iter); write(h2,' '); end;
    end;
    writeln(h2);
    for iter:= 0 to i do
    begin
        if canphai[iter] <> 0 then begin write(h2,iter); write(h2,' '); end;
    end;

    close(h1);
    close(h2);
end.
