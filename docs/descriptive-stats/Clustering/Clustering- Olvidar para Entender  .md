---
date: Mon Oct 12 10:02:38 2015
title: "*Clustering*: Olvidar para Entender"
author: Andrés Aravena  
lang: es  
---

## Cumpleaños de Jorge Luis Borges
Google,  24 Agosto 2011

## Borges, JL, *Funes El Memorioso*, 1942
Diecinueve años había vivido como quien sueña: miraba sin ver, oía sin oír, se olvidaba de todo, de casi todo. Al caer, perdió el conocimiento; cuando lo recobró, el presente era casi intolerable de tan rico y tan nítido, y también las memorias más antiguas y más triviales.

Nosotros, de un vistazo, percibimos tres copas en una mesa; Funes, todos los vástagos y racimos y frutos que comprende una parra. Sabía las formas de las nubes australes del amanecer del treinta de abril de mil ochocientos ochenta y dos y podía compararlas en el recuerdo con las vetas de un libro en pasta española que sólo había mirado una vez y con las líneas de la espuma que un remo levantó en el Río Negro la víspera de la acción del Quebracho.

Había aprendido sin esfuerzo el inglés, el francés, el portugués, el latín. Sospecho, sin embargo, que no era muy capaz de pensar. **Pensar es olvidar diferencias, es generalizar, abstraer.** En el abarrotado mundo de Funes no había sino detalles, casi inmediatos.

Éste, no lo olvidemos, era casi incapaz de ideas generales, platónicas. No sólo le costaba comprender que el símbolo genérico perro abarcara tantos individuos dispares de diversos tamaños y diversa forma; le molestaba que el perro de las tres y catorce (visto de perfil) tuviera el mismo nombre que el perro de las tres y cuarto (visto de frente). 


# Clustering
Olvidar las diferencias para reconocer lo compartido

“New Oxford American Dictionary” define
cluster |ˈkləstər|
noun
• a group of similar objects growing closely together : clusters of creamy-white flowers.
• a group of people or similar objects positioned or occurring close together : a cluster of antique shops.
• a natural subgroup of a population, used for statistical sampling or analysis.
Sirve para...
Reducir el número de datos
Generar hipótesis
Probar hipótesis
Predecir (con alguna base)
Un Clustering Correcto

cellular organisms; 
Eukaryota; Opisthokonta; Metazoa; Eumetazoa; Bilateria; Coelomata; Deuterostomia; Chordata; Craniata;
Vertebrata; Gnathostomata; Teleostomi; Euteleostomi; Sarcopterygii; Tetrapoda;
Amniota; Mammalia; Theria; Eutheria; Euarchontoglires;
Primates; Haplorrhini; Simiiformes; Catarrhini;
Hominoidea; Hominidae; Homininae; Homo; H.sapiens 
Latinoamericano; 
sudamericano; chileno, 
santiaguino, beauchefiano

Un Clustering Correcto
Variables: Expresión de genes

Individuos: muestras cancerosas

Clustering muestra 4 grupos
Vuelta a la definición
cluster |ˈkləstər|
noun
• a group of similar objects growing closely together

¿cómo sabemos cuándo dos objetos son similares?
Distancia
 menor distancia → más parecidos
 dist(x,y)=0 si y solo si x=y
 simétrica: d(x,y)=d(y,x)
 se cumple la desigualdad triangular
Distancia Euclideana
raíz cuadrada de la suma de los cuadrados
L2
valores continuos
costosa
tiene sentido geométrico
Distancia de Manhattan
Suma de los valores absolutos
dist=|x0-y0|+|x1-y1|
L1
Cada componente contribuye igual
Distancia Uniforme
Distancia del máximo
dist=max(|x0-y0|,|x1-y1|)
L∞
Sólo contribuye el mayor
Distancia Coseno
Comparar tendencias y no tamaños
x⋅y = ||x|| ||y|| cos ø
dist = 1- cos ø  
Distancia de Pearson
Correlación lineal
Distancia coseno de variables centradas
distpearson(a,e)=distcoseno(a-ā, e-ē)
Ejemplo
X = (0,0),   Y = (100,1)
L1(X,Y) = 101
L2(X,Y) = 100.005
L∞(X,Y) = 100
distcoseno(X,Y) = 1
distpearson(X,Y) = 1
Ejemplo
X = (10,1),   Y = (100,1)
L1(X,Y) = 90
L2(X,Y) = 90
L∞(X,Y) = 90
distcoseno(X,Y) = 0.00401757
distpearson(X,Y) = 0
Distancia de Hamming
Variables dicotómicas: {0,1}n
dist(x,y) = número de variables en que x e y difieren
Contar: M00, M01, M10, M11
dist(x,y) = M01+M10
Coincide con L1
Distancia de Jaccard
a.k.a Tanimoto
Variables dicotómicas: 0 o 1
dist(x,y) = número de variables en que x e y difieren, normalizado por variables presentes
Contar: M00, M01, M10, M11
dist(x,y) = (M01+M10 )/(M01+M10+M11)
Ejemplo
A = 11100011110000
B = 01010101010101
Hamming(A,B) = 8
Jaccard(A,B) = 1-3/8 = 8/11
Clustering Jerárquico
bottom up: vamos juntando de a uno
si dist(Di,Dj) es la menor, Di y Dj se juntan
se crea un cluster Ck
¿cómo se mide la distancia entre Di y Ck?
Average Linkage
dist(Di, Ck)=average(dist(Di, Dj): Dj en Ck)
dist(Cl, Ck)=avg(dist(Di, Dj): Dj en Ck, Di en Cl)
La distancia entre dos clusters es la distancia entre sus centros de gravedad
Single Linkage
dist(Di, Ck)=min(dist(Di, Dj): Dj en Ck)
dist(Cl, Ck)=min(dist(Di, Dj): Dj en Ck, Di en Cl)
La distancia entre dos clusters es la menor distancia entre sus elementos
Complete Linkage
dist(Di, Ck)=max(dist(Di, Dj): Dj en Ck)
dist(Cl, Ck)=max(dist(Di, Dj): Dj en Ck, Di en Cl)
La distancia entre dos clusters es la mayor distancia entre sus elementos
K-Means
Método para encontrar K clusters
N observaciones Di de M variables
Se escogen K vectores Cj de dim M al azar
Cada Di se compara con cada Cj, se le asigna  la categoría j más cercana.
Hay K categorías, se busca el centro de cada una: son los nuevos Cj
Ejemplo
