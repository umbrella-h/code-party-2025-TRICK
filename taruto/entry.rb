    eval(%w(s           ystem("st           ty\ssane")          ;n=1;cake           _color_se           ts={"🍊\sM           ikan":[22       
  0,         22       1,         22       2,         22       3]         ,"       🍵\s        M        at         ch       a"         :[     
70     ,71    ,1    06     ,10    7]    ,"     🌸\s    Sa    ku     ra"    :[    21     0,2    16    ,2     17,    21    8]     ,"🍫    \s    
Ch   oc   o"   :[   13   0,   17   2,   17   3,   17   4]   };   ad   zu   ki   _c   ol   or   s=   [9   5,   96   ,1   31   ,1    32   ];  
ku   ri        _c   ol   or        =1   78   ;s        ym   bo   ls        =[   "▄   ▄"        ,"    █   \s"        ,"   ▀▀   ",       "\s   
  █    ",     "▟     █"    ,"     █▙     ",    "█     ▛"     ,"    ▜█     ",     "█    █"     ];     ro    ws     =5     ;c    ol     s=    
   5;   grid=          Ar   ray.n          ew   (rows          ){   Array          .n   ew(co          ls   )};fi          ll   _orde       
                                                                                                                                            
    r=Array.n           ew(rows){           Array.new           (cols)};x           ,y=0,0;dx           ,dy=0,1;c           ake_color       
  _k         ey       s=         ca       ke         _c       ol         or       _s         et       s.         ke       ys         ;c     
ol     or_    in    de     x=0    ;l    oo     p{c    ak    e_     col    or    s=     cak    e_    co     lor    _s    et     s[c    ak    
e_   co   lo   r_   ke   ys   [c   ol   or   _i   nd   ex   ]]   ;c   ur   re   nt   _c   ol   or   _s   et   =c   ak   e_   co   lo   r_   
ke   ys        [c   ol   or        _i   nd   ex        ];   co   lo        r_   in   de        x=   (c   ol        or   _i   nd        ex   
 +1    )%     ca     ke    _c     ol     or    _k     ey     s.    si     ze     ;g    ri     d=     Ar    ra     y.     ne    w(     ro    
   ws   ){Arr          ay   .new(          co   ls)};          fi   ll_or          de   r=Arr          ay   .new(          ro   ws){A       
                                                                                                                                            
    rray.new(           cols)};x,           y=0,0;dx,           dy=0,1;n=           1;loop{nx           ,ny=x+dx,           y+dy;if(n       
  ==         ro       ws         *c       ol         s)       th         en       (g         ri       d[         x]       [y         ]=     
sy     mbo    ls    [8     ];f    il    l_     ord    er    [x     ][y    ]=    n)     ;el    si    f(     nx<    0|    |n     x>=    ro    
ws   ||   ny   <0   ||   ny   >=   co   ls   ||   !g   ri   d[   nx   ][   ny   ].   ni   l?   )t   he   n(   if   (d   x=   =0   &&   dy   
==   1)        th   en   (g        ri   d[   x]        [y   ]=   sy        mb   ol   s[        5]   );   el        si   f(   dx        ==   
 1&    &d     y=     =0    )t     he     n(    gr     id     [x    ][     y]     =s    ym     bo     ls    [6     ])     ;e    ls     if    
   (d   x==0&          &d   y==-1          )t   hen(g          ri   d[x][          y]   =symb          ol   s[7])          ;e   lsif(       
                                                                                                                                            
    dx==-1&&d           y==0)then           (grid[x][           y]=symbol           s[4])end;           fill_orde           r[x][y]=n       
  ;d         x,       dy         =d       y,         -d       x;         nx       ,n         y=       x+         dx       ,y         +d     
y)     els    e(    if     (dx    ==    0&     &dy    ==    1)     the    n(    gr     id[    x]    [y     ]=s    ym    bo     ls[    0]    
);   el   si   f(   dx   ==   1&   &d   y=   =0   )t   he   n(   gr   id   [x   ][   y]   =s   ym   bo   ls   [1   ])   ;e   ls   if   (d   
x=   =0        &&   dy   ==        -1   )t   he        n(   gr   id        [x   ][   y]        =s   ym   bo        ls   [2   ])        ;e   
 ls    if     (d     x=    =-     1&     &d    y=     =0     )t    he     n(     gr    id     [x     ][    y]     =s     ym    bo     ls    
   [3   ])end          ;f   ill_o          rd   er[x]          [y   ]=n)e          nd   ;x,y=          nx   ,ny;p          ri   nt"\e       
                                                                                                                                            
    [2J";prin           t"\e[1m\e           [38;5;#{c           ake_color           s[0]}m#{c           urrent_co            lor_set}       
  \e[        0m       ";         pr       in         t"       \n         \n       ";         gr       id         .e       ac         h_     
wi     th_    in    de     x{|    ro    w,     i|r    ow    .e     ach    _w    it     h_i    nd    ex     {|c    el    l,     j|o    rd    
er   =f   il   l_   or   de   r[   i]   [j   ]|   |0   ;i   f(   or   de   r>   0)   th   en   (b   g_   co   lo   r=   ca   ke   _c   ol   
or   s[        (o   rd   er        -1   )%   ca        ke   _c   ol        or   s.   si        ze   ];   te        xt   _c   ol        or   
 =a    dz     uk     i_    co     lo     rs    [(     or     de    r-     1)     %a    dz     uk     i_    co     lo     rs    .s     iz    
   e]   ;if(c          el   l==sy          mb   ols[8          ])   then(          pr   int"\e          [   48;5;          #{   bg_co       
                                                                                                                                            
    lor}m\e[3           8;5;#{kur           i_color}m           \e[1m#{ce           ll||"\s\s           "}\e[0m")           ;elsif(sy       
  mb         ol       s[         4.       .7         ].       in         cl       ud         e?       (c         el       l)         )t     
he     n(p    ri    nt     "\e    [3    8;     5;#    {b    g_     col    or    }m     \e[    1m    #{     cel    l}    \e     [0m    ")    
el   se   (p   ri   nt   "\e   [   48   ;5   ;#   {b   g_   co   lo   r}    m  \e[   38   ;5   ;#   {t   ex   t_   co   lo   r}    m  \e[   
1m   #{        ce   ll   ||        "    \s   \s"        }   \e[   0m       ")   en   d)        el   se   (p        ri   nt   "        \s   
 \s"    )e    nd     };    pr     in     t"    \n     "}     ;i    f(     n>     ro    ws     *c     ol    s)     th     en    (b     re    
   ak   ;)end          ;n   +=1;s          le   ep(0.          1)   }})*""          )   #####          ##   #####          ##   #####       
                                                                                                                                            