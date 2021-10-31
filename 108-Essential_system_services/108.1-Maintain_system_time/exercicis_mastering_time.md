## Gestionant el temps

### Conceptes de temps

##### Exercici 1.

Necessitem mesurar el temps, i per fer-ho necessitem una referència: una hora
de referència. Abans es feia servir GMT. Que és?

##### Exercici 2.

Quina és l'hora de referència actual, molt semblant a la GMT, a partir de la
qual mesurem les altres hores? Com es diuen aquestes "altres hores"?

##### Exercici 3.

Els estats com Espanya, França o Portugal sempre tenen la mateixa franja
horària?  O en algún moment canvien de franja horària? Com es diu aquest canvi
horari?

##### Exercici 4.

Cada dia apaguem l'ordinador al marxar cap a casa i al dia següent l'engeguem.
I ens dona l'hora, fins i tot sense que hi hagi connexió a internet. Com pot
ser això?

##### Exercici 5.

El rellotge de hardware emmagatzema l'any, mes, dia, hora, minut i segon.
Alguna dada més per saber quan arrenqui el sistema si l'ordinador es troba a
Bora Bora o a Rio de Janeiro?

##### Exercici 6.

Hi ha una segona hora quan l'ordinador està engegat: la del sistema (o de
software).  Com creus que s'activa aquesta? I que penses que passa quan s'apaga
el sistema?

##### Exercici 7.

Si el RTC no sap si és UTC o hora local, per defecte, quina és la referència
del RTC segons un sistema operatiu Windows? I un Mac? I un GNU/Linux?

* Per defecte per a Windows el RTC conté l'hora local.

* Per defecte per a Mac diu el RTC conté l'hora UTC.

* Per defecte per a GNU/Linux depèn. Es troba a /etc/adjtime i si no existeix
  es considera UTC (systemd és qui decideix això). Ubuntu xequeja si hi ha un
Windows instal·lat, en cas afirmatiu, fa servir hora local, altrament UTC

##### Exercici 8.

Juguem amb l'ordre timedatectl i el significat de les diferents línies:

```
[billy_portes@pc666 ~]$ timedatectl
                      Local time: Tue 2018-12-11 14:03:59 CET
                  Universal time: Tue 2018-12-11 13:03:59 UTC
                        RTC time: Tue 2018-12-11 13:03:59
                       Time zone: Europe/Madrid (CET, +0100)
       System clock synchronized: yes
systemd-timesyncd.service active: yes
                 RTC in local TZ: no
```

---


##### Exercici 9.

Mostrem la ***data/hora del sistema*** actual:

##### Exercici 10.

Mostra la data de demà (ha de ser **la mateixa ordre** sempre) en format dd/mm/YYYY

##### Exercici 11.

Abans d'executar la següent ordre, intenta esbrinar que fa?

```
[ $(date +%d%m%Y) = "20051992" ] && echo "Gooooool de Koeman"
```

##### Exercici 12.

Estableix la data del sistema una setmana abans de la de l'exercici anterior.

##### Exercici 13.

Utilitza l'ordre `hwclock` per reestablir l'hora del sistema, és a dir copiar l'hora del RTC al sistema.

##### Exercici 14.

*offtopic* Mostra un calendari del proper any amb el dilluns com a primer dia de la setmana:

```
cal -m 2019
```

```
                               2019                               

       January               February                 March       
Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su
    1  2  3  4  5  6                1  2  3                1  2  3   
 7  8  9 10 11 12 13    4  5  6  7  8  9 10    4  5  6  7  8  9 10   
14 15 16 17 18 19 20   11 12 13 14 15 16 17   11 12 13 14 15 16 17   
21 22 23 24 25 26 27   18 19 20 21 22 23 24   18 19 20 21 22 23 24   
28 29 30 31            25 26 27 28            25 26 27 28 29 30 31   
                                                                     
        April                   May                   June        
Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su
 1  2  3  4  5  6  7          1  2  3  4  5                   1  2   
 8  9 10 11 12 13 14    6  7  8  9 10 11 12    3  4  5  6  7  8  9   
15 16 17 18 19 20 21   13 14 15 16 17 18 19   10 11 12 13 14 15 16   
22 23 24 25 26 27 28   20 21 22 23 24 25 26   17 18 19 20 21 22 23   
29 30                  27 28 29 30 31         24 25 26 27 28 29 30   
                                                                     
        July                  August                September     
Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su
 1  2  3  4  5  6  7             1  2  3  4                      1   
 8  9 10 11 12 13 14    5  6  7  8  9 10 11    2  3  4  5  6  7  8   
15 16 17 18 19 20 21   12 13 14 15 16 17 18    9 10 11 12 13 14 15   
22 23 24 25 26 27 28   19 20 21 22 23 24 25   16 17 18 19 20 21 22   
29 30 31               26 27 28 29 30 31      23 24 25 26 27 28 29   
                                              30                     
       October               November               December      
Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su   Mo Tu We Th Fr Sa Su
    1  2  3  4  5  6                1  2  3                      1   
 7  8  9 10 11 12 13    4  5  6  7  8  9 10    2  3  4  5  6  7  8   
14 15 16 17 18 19 20   11 12 13 14 15 16 17    9 10 11 12 13 14 15   
21 22 23 24 25 26 27   18 19 20 21 22 23 24   16 17 18 19 20 21 22   
28 29 30 31            25 26 27 28 29 30      23 24 25 26 27 28 29   
                                              30 31                
```


**Ordre timedatectl**

##### Exercici 15.

Estableix l'hora del sistema a les 15:15:00

---

Observa el temps amb `timedatectl`

##### Exercici 16.

Que passa si activem ara el servidor de temps? És a dir si executem:

```
systemctl start chronyd
```

que predius que passarà si observes ```timedatectl```?

##### Exercici 17.

Mostra totes les zones horàries. Mostra les zones horàries europees.

##### Exercici 18.

Estableix l'hora del sistema com la d'Atenes

##### Exercici 19.

Sembla que `timedatectl` mostrava el darrer i següent DTS segons [aquest
enllaç](https://docs.fedoraproject.org/en-US/Fedora/24/html/System_Administrators_Guide/ch-Configuring_the_Date_and_Time.html)
però ja no ho fa.

Tot i així podem trobar aquesta informació. Primer de tot, necessitem saber
quina és la nostra zona horària (al nostre cas *Europe/Madrid*). Si ara fem:

```
zdump -v Europe/Madrid
```

Podem mostrar només la línia referrides a aquest any (suposem 2018) i el
següent (suposem 2019):

```
zdump -v Europe/Madrid -c 2018,2020
```

O de forma més genèrica perquè ens serveixi sempre:

```
zdump -v Europe/Madrid -c $(date '+%Y'),$(date -d '+1 year' '+%Y')
```

Suposem que a més volem retallar la info que ens interessa, mes, dia i any dels
dies que hi ha DTS, això es pot fer amb una ordre molt potent, `awk`:

```
zdump -v Europe/Madrid  -c $(date '+%Y'),$(date -d '+1 year' '+%Y') | awk -v y=$(date '+%Y') '$6==y && $15~1 {print $4, $3, $6}'
```

que si estiguéssim al 2018 ens mostraria:

```
25 Mar 2018
28 Oct 2018
```

Podeu fer el mateix pel següent any.

```
zdump -v Europe/Madrid  -c $(date '+%Y'),$(date -d '+2 year' '+%Y') | awk -v y=$(($(date '+%Y')+1)) '$6==y && $15~1 {print $4, $3, $6}'
```

Feu el mateix sense utilitzar awk, amb les ordres grep i cut per exemple. No
cal mateix ordre.  És a dir és suficient que es mostri per a l'any 2018:

```
25 Mar 2018
28 Oct 2018
```

##### Exercici 20.

Com es diu el protocol que ajuda a sincronitzar un ordinador amb un servidor de
temps?  I pots posar dos exemples de serveis/dimonis que fan servir aquest
protocol? Quin fa servir el nostre Fedora?

##### Exercici 21.

Que fa la següent ordre?

```
chronyd -q 'server 2.fedora.pool.ntp.org iburst'
```

##### Exercici 22.

Exercici per jugar amb els servidors de temps: Juguem amb terminator per
exemple i dues seccions (o amb dues sessions de gnome-terminal). Per instal.lar
terminator fer **dnf install terminator**  En una
examinarem l'ordre timedatectl com a usuari normal i a l'altre executarem
ordres com a root.  Ens interessa veure com canvia l'ordre timedatectl, podem
utilitzar per a això timedatectl amb l'ordre watch  

```
watch timedatectl
```

Millor encara volem que es ressaltin les diferències entre un instant de temps
i el següent

```
watch -d timedatectl
```

Millor encara només em fixo en les 3 darreres línies de l'ordre, necessito
llegir *man* per les cometes

```
watch -d 'timedatectl | tail -3'
```

A l'altra secció/terminal, com a root, fem el següent:

```
systemctl status chronyd # comprovem l'estat del dimoni chrony
```

Comprovem que està arrencat el servei i després el parem i observem els canvis
a l'altra terminal

```
systemctl stop chronyd
```

Arranquem ara el servei i mirem que passa a l'altre terminal (2 canvis):

```
systemctl start chronyd
```

Fem un watch de l'ordre 'chronyc sources', no és necessari ser root, que ens
dona informació dels servidors de temps a on es connecta chronyd

```
watch chronyc sources
```

Esperem una estona (2 minuts com a màxim) i comprovem com es sincronitza i es
dona un altre canvi.  Quan la columna LastRx, que representa els segons que fa
que no es sincronitza amb un dels servidors es posi a 0, es donarà aquest
canvi.

També podem forçar-lo, es a dir que es sincronitzi:

```
chronyc -a 'burst 4/4'
```

##### Exercici 23.

*Offtopic* Aquesta funcionalitat no la suporten tots els rellotges de hardware.
Heu de trobar al sistema un fitxer que representa "l'alarma de
despertar-se" del rellotge de hardware RTC. Un cop trobat, envieu-li uns quants
segons, per exemple 20, perquè un cop l'ordinador estigui en _stand-by_ es desperti:

```
echo +20 > ...
```

##### Exercici 24.

Amb la següent ordre heu de trobar la línia on diu que es copia l'hora del hardware al sistema.
Fa referència a l'arrencada del sistema

```
journalctl -b | grep -i rtc
# o també aquesta altra ordre:
dmesg | grep -i rtc
```


