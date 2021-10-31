## Gestionant el temps

### Conceptes de temps

##### Exercici 1.

Necessitem mesurar el temps, i per fer-ho necessitem una referència: una hora
de referència. Abans es feia servir GMT. Que és?

El **Greenwich Mean Time**, mesura del temps basada en el temps solar mitjà al
meridià de Greenwich, meridià origen de les longituds, que travessa
l'observatori de Greenwich, a prop de Londres, a Anglaterra. Col·loquialment
*Greenwich Meridian Time* La seva mesura es basa en la rotació terrestre.

##### Exercici 2.

Quina és l'hora de referència actual, molt semblant a la GMT, a partir de la
qual mesurem les altres hores? Com es diuen aquestes "altres hores"?

**UTC**. Temps Universal Coordinat. La seva mesura es basa en la tècnica dels
rellotges atòmics (molt més regular que el gir de la terra) però l'hora, tot i
que calculada de manera diferent, és la mateixa.  A partir de la referència UTC
distingim diferents **Zones Horàries**: UTC, UTC+1(CET), UTC+2(CEST) ...

##### Exercici 3.

Els estats com Espanya, França o Portugal sempre tenen la mateixa franja
horària?  O en algún moment canvien de franja horària? Com es diu aquest canvi
horari?

No, basant-se en un suposat estalvi d'energia aprofitant hores de llum, canvien
la seva hora.  Per exemple Espanya i França que a l'hivern pertanyen a UTC + 1,
a l'horari d'estiu que comença a finals de març són UTC + 2

**DST Daylight Save Time**

##### Exercici 4.

Cada dia apaguem l'ordinador al marxar cap a casa i al dia següent l'engeguem.
I ens dona l'hora, fins i tot sense que hi hagi connexió a internet. Com pot
ser això?

Perquè existeix un rellotge que es diu **RTC (Real Time Clock)** o rellotge de
hardware (també rellotge de BIOS o de CMOS) que emmagatzema l'hora

##### Exercici 5.

El rellotge de hardware emmagatzema l'any, mes, dia, hora, minut i segon.
Alguna dada més per saber quan arrenqui el sistema si l'ordinador es troba a
Bora Bora o a Rio de Janeiro?

Res més. El hardware no sap quina és la referència de l'hora emmagatzemada.  És
el sistema operatiu qui diu si està emmagatzemada en UTC o en hora local (zona
horària) Ni molt menys emmagatzema el *DTS*.

##### Exercici 6.

Hi ha una segona hora quan l'ordinador està engegat: la del sistema (o de
software).  Com creus que s'activa aquesta? I que penses que passa quan s'apaga
el sistema?

Quan s'engega el sistema rep l'hora del hardware, fa la *conversió* adient en
funció de la zona horària i del DST si s'ha d'aplicar i a partir d'aquest
moment és el mateix sistema qui s'encarrega de manegar l'hora (mitjançant el
kernel)

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

- hora local
- hora universal UTC
- hora RTC
- zona horària
- si està sincronitzat o no (Podem tenir activat un servei però que encara no s'hagi sincronitzat)
- si tenim activat un servei/dimoni per sincronitzar el temps del sistema (mitjançant servidors de temps)
- Si el RTC està en hora local

---


##### Exercici 9.

Mostrem la ***data/hora del sistema*** actual:

```
date
```

##### Exercici 10.

Mostra la data de demà (ha de ser **la mateixa ordre** sempre) en format dd/mm/YYYY

```
date -d'tomorrow' +%d/%m/%Y
```

##### Exercici 11.

Abans d'executar la següent ordre, intenta esbrinar que fa?

```
[ $(date +%d%m%Y) = "20051992" ] && echo "Gooooool de Koeman"
```

Estableix l'hora del sistema al 20 de maig de 1992.

Comprova que ho has fet be executant l'ordre anterior.
Tanmateix recorda d'observar que mostra ```watch timedatectl```  

```
date --set 1992-05-20 +00:49:00 # com a root
```

##### Exercici 12.

Estableix la data del sistema una setmana abans de la de l'exercici anterior.

```
date --set='-1 week'
```

##### Exercici 13.

Utilitza l'ordre `hwclock` per reestablir l'hora del sistema, és a dir copiar l'hora del RTC al sistema.

**Solució:**

```
sudo hwclock --hctosys
```

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

```
[isx666@hell ~]$ timedatectl set-time 15:15
Failed to set time: NTP unit is active
```

El missatge d'error anterior em diu que al tenir un dimoni/servei que em
sincronitza el temps a servidors de fora no em deixa fer aquest canvi.  Com a
root faig:

```
systemctl stop chronyd
[isx666@hell ~]$ timedatectl set-time 15:15
```
---

Observa el temps amb `timedatectl`

##### Exercici 16.

Que passa si activem ara el servidor de temps? És a dir si executem:

```
systemctl start chronyd
```

que predius que passarà si observes ```timedatectl```?

Que es canviarà l'hora del sistema en breu i la del hardware una mica després.

##### Exercici 17.

Mostra totes les zones horàries. Mostra les zones horàries europees.

```
timedatectl list-timezones
timedatectl list-timezones | grep Europe
```

##### Exercici 18.

Estableix l'hora del sistema com la d'Atenes

```
timedatectl set-timezone Europe/Athens
```

##### Exercici 19.

Sembla que `timedatectl` mostrava el darrer i següent DTS segons [aquest
enllaç](https://docs.fedoraproject.org/en-US/Fedora/24/html/System_Administrators_Guide/ch-Configuring_the_Date_and_Time.html)
però ja no ho fa.

Tot i així podem trobar aquesta informació. Primer de tot, necessitem saber
quina és la nostra zona horària (al nostre cas *Europe/Madrid*).  Si ara fem:

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

**Solució**

```
zdump -v Europe/Madrid | grep 2018 | grep 'isdst=1' | cut -d" " -f3-5
```

[Web on trobar els DST](https://www.timeanddate.com/time/change/spain/madrid?year=2016)

##### Exercici 19.

Com es diu el protocol que ajuda a sincronitzar un ordinador amb un servidor de
temps?  I pots posar dos exemples de serveis/dimonis que fan servir aquest
protocol? Quin fa servir el nostre Fedora?

NTP
chronyd,ntpd
chronyd

##### Exercici 21.

Que fa la següent ordre?

```
chronyd -q 'server 2.fedora.pool.ntp.org iburst'
```

Es necessita que estigui parat el dimoni del temps.
El server es pot treure de:

```
/etc/chrony.conf
```

també es pot utilitzar com a servidor de temps

```
pool.ntp.org
```

##### Exercici 22.

Exercici per jugar amb els servidors de temps: Juguem amb terminator per
exemple i dues seccions (o amb dues sessions de gnome-terminal).  En una
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

```
echo +20 > /sys/class/rtc/rtc0/wakealarm
```
i ràpidament abans de que s'esgotin els 20 segons hiberna el sistema.

Pots fer-ho gràficament (és fa igual que amb poweroff però prement la tecla
_Alt_) o amb l'ordre de consola:

```
systemctl suspend
```

##### Exercici 24.

Amb la següent ordre heu de trobar la línia on diu que es copia l'hora del hardware al sistema.
Fa referència a l'arrencada del sistema

```
journalctl -b | grep -i rtc
# o també aquesta altra ordre:
dmesg | grep -i rtc
```

```
[    0.764124] rtc_cmos 00:01: setting system clock to 2016-12-01 13:22:42 UTC (1480598562)
```




