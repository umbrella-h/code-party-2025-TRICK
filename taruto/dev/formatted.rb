# Further adjustments needed for special characters: \n (newline), \s (space), \e (escape)
# The adjusted final version is in the ../entry.rb file

    eval(%w(s           ystem("st           ty\ssane"           );n=1;cak           e_color_s           ets={"🍊\s           Mikan":[2       
  20         ,2       21         ,2       22         ,2       23         ],       "🍵         \s       Ma         tc       ha         ":     
[7     0,7    1,    10     6,1    07    ],     "🌸\    sS    ak     ura    ":    [2     10,    21    6,     217    ,2    18     ],"    🍫\    
sC   ho   co   ":   [1   30   ,1   72   ,1   73   ,1   74   ]}   ;a   dz   uk   i_   co   lo   rs   =[   95   ,9   6,   13   1,   13   2]   
;k   ur        i_   co   lo        r=   17   8;        sy   mb   ol        s=   ["   ▄▄        ",   "█   \s        ",   "▀   ▀"        ,"   
 \s    █"     ,"     ▟█    ",     "█     ▙"    ,"     █▛     ",    "▜     █"     ,"    ██     "]     ;r    ow     s=     5;    co     ls    
   =5   ;grid          =A   rray.          ne   w(row          s)   {Arra          y.   new(c          ol   s)};f          il   l_ord       
                                                                                                                                            
    er=Array.           new(rows)           {Array.ne           w(cols)};           x,y=0,0;d           x,dy=0,1;           cake_colo       
  r_         ke       ys         =c       ak         e_       co         lo       r_         se       ts         .k       ey         s;     
co     lor    _i    nd     ex=    0;    lo     op{    ca    ke     _co    lo    rs     =ca    ke    _c     olo    r_    se     ts[    ca    
ke   _c   ol   or   _k   ey   s[   co   lo   r_   in   de   x]   ];   cu   rr   en   t_   co   lo   r_   se   t=   ca   ke   _c   ol   or   
_k   ey        s[   co   lo        r_   in   de        x]   ;c   ol        or   _i   nd        ex   =(   co        lo   r_   in        de   
 x+    1)     %c     ak    e_     co     lo    r_     ke     ys    .s     iz     e;    gr     id     =A    rr     ay     .n    ew     (r    
   ow   s){Ar          ra   y.new          (c   ols)}          ;f   ill_o          rd   er=Ar          ra   y.new          (r   ows){       
                                                                                                                                            
    Array.new           (cols)};x           ,y=0,0;dx           ,dy=0,1;n           =1;loop{n           x,ny=x+dx           ,y+dy;if(       
  n=         =r       ow         s*       co         ls       )t         he       n(         gr       id         [x       ][         y]     
=s     ymb    ol    s[     8];    fi    ll     _or    de    r[     x][    y]    =n     );e    ls    if     (nx    <0    ||     nx>    =r    
ow   s|   |n   y<   0|   |n   y>   =c   ol   s|   |!   gr   id   [n   x]   [n   y]   .n   il   ?)   th   en   (i   f(   dx   ==   0&   &d   
y=   =1        )t   he   n(        gr   id   [x        ][   y]   =s        ym   bo   ls        [5   ])   ;e        ls   if   (d        x=   
 =1    &&     dy     ==    0)     th     en    (g     ri     d[    x]     [y     ]=    sy     mb     ol    s[     6]     );    el     si    
   f(   dx==0          &&   dy==-          1)   then(          gr   id[x]          [y   ]=sym          bo   ls[7]          );   elsif       
                                                                                                                                            
    (dx==-1&&           dy==0)the           n(grid[x]           [y]=symbo           ls[4])end           ;fill_ord           er[x][y]=       
  n;         dx       ,d         y=       dy         ,-       dx         ;n       x,         ny       =x         +d       x,         y+     
dy     )el    se    (i     f(d    x=    =0     &&d    y=    =1     )th    en    (g     rid    [x    ][     y]=    sy    mb     ols    [0    
])   ;e   ls   if   (d   x=   =1   &&   dy   ==   0)   th   en   (g   ri   d[   x]   [y   ]=   sy   mb   ol   s[   1]   );   el   si   f(   
dx   ==        0&   &d   y=        =-   1)   th        en   (g   ri        d[   x]   [y        ]=   sy   mb        ol   s[   2]        );   
 el    si     f(     dx    ==     -1     &&    dy     ==     0)    th     en     (g    ri     d[     x]    [y     ]=     sy    mb     ol    
   s[   3])en          d;   fill_          or   der[x          ][   y]=n)          en   d;x,y          =n   x,ny;          pr   int"\       
                                                                                                                                            
    e[2J";pri           nt"\e[1m\           e[38;5;#{           cake_colo           rs[0]}m#{           current_c           olor_set}       
  \e         [0       m"         ;p       ri         nt       "\         n\       n"         ;g       ri         d.       ea         ch     
_w     ith    _i    nd     ex{    |r    ow     ,i|    ro    w.     eac    h_    wi     th_    in    de     x{|    ce    ll     ,j|    or    
de   r=   fi   ll   _o   rd   er   [i   ][   j]   ||   0;   if   (o   rd   er   >0   )t   he   n(   bg   _c   ol   or   =c   ak   e_   co   
lo   rs        [(   or   de        r-   1)   %c        ak   e_   co        lo   rs   .s        iz   e]   ;t        ex   t_   co        lo   
 r=    ad     zu     ki    _c     ol     or    s[     (o     rd    er     -1     )%    ad     zu     ki    _c     ol     or    s.     si    
   ze   ];if(          ce   ll==s          ym   bols[          8]   )then          (p   rint"          \e   [48;5          ;#   {bg_c       
                                                                                                                                            
    olor}m\e[           38;5;#{ku           ri_color}           m\e[1m#{c           ell||"\s\           s"}\e[0m"           );elsif(s       
  ym         bo       ls         [4       ..         7]       .i         nc       lu         de       ?(         ce       ll         ))     
th     en(    pr    in     t"\    e[    38     ;5;    #{    bg     _co    lo    r}     m\e    [1    m#     {ce    ll    }\     e[0    m"    
)e   ls   e(   pr   in   t"   \e   [4   8;   5;   #{   bg   _c   ol   or   }m   \e   [3   8;   5;   #{   te   xt   _c   ol   or   }m   \e   
[1   m#        {c   el   l|        |"   \s   \s        "}   \e   [0        m"   )e   nd        )e   ls   e(        pr   in   t"        \s   
 \s    ")     en     d}    ;p     ri     nt    "\     n"     };    if     (n     >r    ow     s*     co    ls     )t     he    n(     br    
   ea   k;)en          d;   n+=1;          sl   eep(0          .1   )}})*          ""   )####          ##   #####          ##   #####       
                                                                                                                                            