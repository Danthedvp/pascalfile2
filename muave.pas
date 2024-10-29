var
    h1,h2:text;
    n,k,p1,p2:longint;

begin
    assign(h1,'TICKETS.INP');
    assign(h2,'TICKETS.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,n,k,p1,p2);
    if(p1 * k <= p2) then write(h2,p1 * n) else
    write(h2,p1 * (n MOD k) + p2 * (n DIV k));

    close(h1);
    close(h2);
end.