
Gestión de librerías compartidas
Gestió de llibreries compartides
Les aplicacions es poden classificar en 2 grans grups si ens fixem en la implementació del seu codi font

Aplicacions enllaçades estàticament
Consisteixen en programes que contenen totes les llibreries necessàries pel seu funcionament en el seu interior, pel que no depenen de res per poder-se executar

Aplicacions enllaçades dinàmicament
Consisteixen en programes que no disposen per si mateixos de totes les funcions necessàries per la seva execució. És a dir, necessiten d'una sèrie de llibreries externes a l'aplicació que es troben dins del propi sistema.

Les aplicacions enllaçades dinàmicament, tot i no poder-se executar per si mateixes, permeten la possibilitat de compartir llibreries entre programes, fent així el seu codi més petit. Això facilita també la seva execució a l'ocupar menys recursos en RAM. És per això que la majoria d'aplicacions actuals estiguin dissenyats seguint aquest model

ldd
La comanda ldd nes permet consultar si una aplicació està enllaçda dinàmicament o no. En el cas d'estar-ho ens mostra un llistat de les llibreries que el programa necesista per funcionar

$ ldd /bin/ln
    linux-vdso.so.1 (0x00007ffdc8dda000)
    libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f1410c72000)
    /lib64/ld-linux-x86-64.so.2 (0x00007f141121f000)





Configuració de llibreries compartides
Per tal que un programa enllaçat dinàmicament es pugui executar és necessari conèixer la ubicació de les seves llibreries. En el cas de no ser detectades pel sistema podem definir una variable d'entorn, la qual contindrà les rutes absolutes de les ubicacions de les llibreries necessàries per l'aplicació:

$ export LD_LIBRARY_PATH=/usr/local/myapp:/usr/lib/myapp





Una altra forma d'incorporar nous PATH's a la consulta de llibreries és editant el fitxer de configuració /etc/ld.so.conf i afegint en ell les noves rutes absolutes:

$ cat /etc/ld.so.conf
/usr/lib
/usr/X11R6/lib/Xaw3d
/usr/X11R6/lib

**/usr/local/myapp
/usr/local/myapp**





ldconfig
La comanda ldconfig permet actualitzar la llista d'ubicacions on serà cercada una llibreria. Aquesta llista consisteix en un fitxer caché, anomenat /etc/ld.so.cache i que conté totes les llibreries dels directoris. El que fa aquesta comanda és consultar totes les ubicacions configurades en el fitxer /etc/ld.so.conf

