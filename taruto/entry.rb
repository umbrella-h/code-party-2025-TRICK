    eval(%w(n           =1;cake_c           olor_sets           ={"🍊\\sMi           kan":[220           ,221,222,           223],"🍵\\       
  sM         at       ch         a"       :[         70       ,7         1,       10         6,       10         7]       ,"         🌸      
\\s    Sak    ur    a"     :[2    10    ,2     16,    21    7,     218    ],    "🍫     \\s    Ch    oc     o":    [1    30     ,17    2,    
17   3,   17   4]   };   ad   zu   ki   _c   ol   or   s=   [9   5,   96   ,1   31   ,1   32   ];   ku   ri   _c   ol   or   =1   78   ;s   
ym   bo        ls   =[   "▄        ▄"   ,"   █        \\s   ",   "▀        ▀"   ,"   \\        s█   ",   "▟        █"   ,"   █▙        ",   
 "█    ▛"     ,"     ▜█    ",     "█     █"    ];     ro     ws    =5     ;c     ol    s=     5;     gr    id     =A     rr    ay     .n    
   ew   (rows          ){   Array          .n   ew(co          ls   )};fi          ll   _orde          r=   Array          .n   ew(ro       
                                                                                                                                            
    ws){Array           .new(cols           )};x,y=0,           0;dx,dy=0           ,1;cake_c           olor_keys           =cake_col       
  or         _s       et         s.       ke         ys       ;c         ol       or         _i       nd         ex       =0         ;l     
oo     p{c    ak    e_     col    or    s=     cak    e_    co     lor    _s    et     s[c    ak    e_     col    or    _k     eys    [c    
ol   or   _i   nd   ex   ]]   ;c   ur   re   nt   _c   ol   or   _s   et   =c   ak   e_   co   lo   r_   ke   ys   [c   ol   or   _i   nd   
ex   ];        co   lo   r_        in   de   x=        (c   ol   or        _i   nd   ex        +1   )%   ca        ke   _c   ol        or   
 _k    ey     s.     si    ze     ;g     ri    d=     Ar     ra    y.     ne     w(    ro     ws     ){    Ar     ra     y.    ne     w(    
   co   ls)};          fi   ll_or          de   r=Arr          ay   .new(          ro   ws){A          rr   ay.ne          w(   cols)       
                                                                                                                                            
    };x,y=0,0           ;dx,dy=0,           1;n=1;loo           p{nx,ny=x           +dx,y+dy;           if(n==row           s*cols)th       
  en         (g       ri         d[       x]         [y       ]=         sy       mb         ol       s[         8]       ;f         il     
l_     ord    er    [x     ][y    ]=    n)     ;el    si    f(     nx<    0|    |n     x>=    ro    ws     ||n    y<    0|     |ny    >=    
co   ls   ||   !g   ri   d[   nx   ][   ny   ].   ni   l?   )t   he   n(   if   (d   x=   =0   &&   dy   ==   1)   th   en   (g   ri   d[   
x]   [y        ]=   sy   mb        ol   s[   5]        );   el   si        f(   dx   ==        1&   &d   y=        =0   )t   he        n(   
 gr    id     [x     ][    y]     =s     ym    bo     ls     [6    ])     ;e     ls    if     (d     x=    =0     &&     dy    ==     -1    
   )t   hen(g          ri   d[x][          y]   =symb          ol   s[7])          ;e   lsif(          dx   ==-1&          &d   y==0)       
                                                                                                                                            
    then(grid           [x][y]=sy           mbols[4])           end;fill_           order[x][           y]=n;dx,d           y=dy,-dx;       
  nx         ,n       y=         x+       dx         ,y       +d         y)       el         se       (i         f(       dx         ==     
0&     &dy    ==    1)     the    n(    gr     id[    x]    [y     ]=s    ym    bo     ls[    0]    );     els    if    (d     x==    1&    
&d   y=   =0   )t   he   n(   gr   id   [x   ][   y]   =s   ym   bo   ls   [1   ])   ;e   ls   if   (d   x=   =0   &&   dy   ==   -1   )t   
he   n(        gr   id   [x        ][   y]   =s        ym   bo   ls        [2   ])   ;e        ls   if   (d        x=   =-   1&        &d   
 y=    =0     )t     he    n(     gr     id    [x     ][     y]    =s     ym     bo    ls     [3     ])    en     d;     fi    ll     _o    
   rd   er[x]          [y   ]=n)e          nd   ;x,y=          nx   ,ny;p          ri   nt"\\          e[   2J";p          ri   nt"\\       
                                                                                                                                            
    e[1m\\e[3           8;5;#{cak           e_colors[           0]}m#{cur           rent_colo           r_set}\\e           [0m";prin       
  t"         \\       n         \\n       ";         gr       id         .e       ac         h_       wi         th       _i         nd     
ex     {|r    ow    ,i     |ro    w.    ea     ch_    wi    th     _in    de    x{     |ce    ll    ,j     |or    de    r=     fil    l_    
or   de   r[   i]   [j   ]|   |0   ;i   f(   or   de   r>   0)   th   en   (b   g_   co   lo   r=   ca   ke   _c   ol   or   s[   (o   rd   
er   -1        )%   ca   ke        _c   ol   or        s.   si   ze        ];   te   xt        _c   ol   or        =a   dz   uk        i_   
 co    lo     rs     [(    or     de     r-    1)     %a     dz    uk     i_     co    lo     rs     .s    iz     e]     ;i    f(     ce    
   ll   ==sym          bo   ls[8]          )t   hen(p          ri   nt"\\          e[   48;5;          #{   bg_co          lo   r}m\\       
                                                                                                                                            
    e[38;5;#{           kuri_colo           r}m\\e[1m           #{cell||"           \\s\\s"}           \\e[0m");e           lsif(symb       
  ol         s[       4.         .7       ].         in       cl         ud       e?         (c       el         l)       )t         he     
n(     pri    nt     "    \\e[    38    ;5     ;#{    bg    _c     olo    r}    m     \\e[    1m    #{     cel    l}    \\     e[0    m"    
)e   ls   e(   pr   in   t"   \\   e[   48   ;5   ;#   {b   g_   co   lo   r}   m   \\e   [3   8;   5;   #{   te   xt   _c   ol   or   }m   
\\   e[        1m   #{   ce        ll   ||   "        \\s   \\   s"        }   \\e   [0        m"   )e   nd        )e   ls   e(        pr   
 in    t"     \\     s    \\s     ")     en    d}     ;p     ri    nt     "     \\n    "}     ;i     f(    n>     ro     ws    *c     ol    
   s)   then(          br   eak;)          en   d;n+=          1;   sleep          (0   .1)}}          )*   "")##          ##   #####       
                                                                                                                                            