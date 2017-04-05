Mushroom Presentation
========================================================
author: Jason Murray
date: April 3, 2017
autosize: true

Summary
========================================================

For this plotly demo I decided to use the mushroom data provided at the UCI ML repository.  The original data can be found here:
https://archive.ics.uci.edu/ml/datasets/Mushroom
<br>
<br>


<br>

## Data Import 
First let's import the data.  I only care about the first 4 columns for my map so I'm going to drop the rest.

```r
data_dir <- "./data"
data_file <- paste(data_dir, "/agaricus-lepiota.data.txt", sep = "")
mushrooms <- read.csv(data_file)
str(mushrooms)
```

```
'data.frame':	8124 obs. of  23 variables:
 $ edible                  : Factor w/ 2 levels "e","p": 2 1 1 2 1 1 1 1 2 1 ...
 $ cap.shape               : Factor w/ 6 levels "b","c","f","k",..: 6 6 1 6 6 6 1 1 6 1 ...
 $ cap.surface             : Factor w/ 4 levels "f","g","s","y": 3 3 3 4 3 4 3 4 4 3 ...
 $ cap.color               : Factor w/ 10 levels "b","c","e","g",..: 5 10 9 9 4 10 9 9 9 10 ...
 $ bruises                 : Factor w/ 2 levels "f","t": 2 2 2 2 1 2 2 2 2 2 ...
 $ odor                    : Factor w/ 9 levels "a","c","f","l",..: 7 1 4 7 6 1 1 4 7 1 ...
 $ gill.attachment         : Factor w/ 2 levels "a","f": 2 2 2 2 2 2 2 2 2 2 ...
 $ gill.spacing            : Factor w/ 2 levels "c","w": 1 1 1 1 2 1 1 1 1 1 ...
 $ gill.size               : Factor w/ 2 levels "b","n": 2 1 1 2 1 1 1 1 2 1 ...
 $ gill.color              : Factor w/ 12 levels "b","e","g","h",..: 5 5 6 6 5 6 3 6 8 3 ...
 $ stalk.shape             : Factor w/ 2 levels "e","t": 1 1 1 1 2 1 1 1 1 1 ...
 $ stalk.root              : Factor w/ 5 levels "?","b","c","e",..: 4 3 3 4 4 3 3 3 4 3 ...
 $ stalk.surface.above.ring: Factor w/ 4 levels "f","k","s","y": 3 3 3 3 3 3 3 3 3 3 ...
 $ stalk.surface.below.ring: Factor w/ 4 levels "f","k","s","y": 3 3 3 3 3 3 3 3 3 3 ...
 $ stalk.color.above.ring  : Factor w/ 9 levels "b","c","e","g",..: 8 8 8 8 8 8 8 8 8 8 ...
 $ stalk.color.below.ring  : Factor w/ 9 levels "b","c","e","g",..: 8 8 8 8 8 8 8 8 8 8 ...
 $ veil.type               : Factor w/ 1 level "p": 1 1 1 1 1 1 1 1 1 1 ...
 $ veil.color              : Factor w/ 4 levels "n","o","w","y": 3 3 3 3 3 3 3 3 3 3 ...
 $ ring.number             : Factor w/ 3 levels "n","o","t": 2 2 2 2 2 2 2 2 2 2 ...
 $ ring.type               : Factor w/ 5 levels "e","f","l","n",..: 5 5 5 5 1 5 5 5 5 5 ...
 $ spore.print.color       : Factor w/ 9 levels "b","h","k","n",..: 3 4 4 3 4 3 3 4 3 3 ...
 $ population              : Factor w/ 6 levels "a","c","n","s",..: 4 3 3 4 1 3 3 4 5 4 ...
 $ habitat                 : Factor w/ 7 levels "d","g","l","m",..: 6 2 4 6 2 2 4 4 2 4 ...
```

========================================================
## Cleaning

Need to add in the factor names to make it easier to add in the graph.


```r
mushrooms$edible <- revalue(mushrooms$edible, c("e"="edible","p" = "poisonous"))
mushrooms$cap.shape <- revalue(mushrooms$cap.shape, c("b"="bell","c"="conical","x"="convex","f"="flat","k"="knobbed","s"="sunken"))
mushrooms$cap.surface <- revalue(mushrooms$cap.surface, c("f"="fibrous","g"="grooves","y"="scaly","s"="smooth"))
mushrooms$cap.color <- revalue(mushrooms$cap.color, c("n"="brown","b"="buff","c"="cinnamon","g"="gray","r"="green","p"="pink","u"="purple","e"="red","w"="white","y"="yellow"))
mushrooms$bruises <- revalue(mushrooms$bruises, c("t"="bruises","f"="no"))
mushrooms$odor <- revalue(mushrooms$odor, c("a"="almond","l"="anise","c"="creosote","y"="fishy","f"="foul","m"="musty","n"="none","p"="pungent","s"="spicy"))
mushrooms$gill.attachment <- revalue(mushrooms$gill.attachment, c("a"="attached","d"="descending","f"="free","n"="notched"))
mushrooms$gill.spacing <- revalue(mushrooms$gill.spacing, c("c"="close","w"="crowded","d"="distant"))
mushrooms$gill.size <- revalue(mushrooms$gill.size, c("b"="broad","n"="narrow"))
mushrooms$gill.color <- revalue(mushrooms$gill.color, c("k"="black","n"="brown","b"="buff","h"="chocolate","g"="gray","r"="green","o"="orange","p"="pink","u"="purple","e"="red","w"="white","y"="yellow"))
mushrooms$stalk.shape <- revalue(mushrooms$stalk.shape, c("e"="enlarging","t"="tapering"))
mushrooms$stalk.root <- revalue(mushrooms$stalk.root, c("b"="bulbous","c"="club","u"="cup","e"="equal","z"="rhizomorphs","r"="rooted","?"="missing"))
mushrooms$stalk.surface.above.ring <- revalue(mushrooms$stalk.surface.above.ring, c("f"="fibrous","y"="scaly","k"="silky","s"="smooth"))
mushrooms$stalk.surface.below.ring <- revalue(mushrooms$stalk.surface.below.ring, c("f"="fibrous","y"="scaly","k"="silky","s"="smooth"))
mushrooms$stalk.color.above.ring <- revalue(mushrooms$stalk.color.above.ring, c("n"="brown","b"="buff","c"="cinnamon","g"="gray","o"="orange","p"="pink","e"="red","w"="white","y"="yellow"))
mushrooms$stalk.color.below.ring <- revalue(mushrooms$stalk.color.below.ring, c("n"="brown","b"="buff","c"="cinnamon","g"="gray","o"="orange","p"="pink","e"="red","w"="white","y"="yellow"))
mushrooms$veil.type <- revalue(mushrooms$veil.type, c("p"="partial","u"="universal"))
mushrooms$veil.color <- revalue(mushrooms$veil.color, c("n"="brown","o"="orange","w"="white","y"="yellow"))
mushrooms$ring.number <- revalue(mushrooms$ring.number, c("n"="none","o"="one","t"="two"))
mushrooms$ring.type <- revalue(mushrooms$ring.type, c("c"="cobwebby","e"="evanescent","f"="flaring","l"="large","n"="none","p"="pendant","s"="sheathing","z"="zone"))
mushrooms$spore.print.color <- revalue(mushrooms$spore.print.color, c("k"="black","n"="brown","b"="buff","h"="chocolate","r"="green","o"="orange","u"="purple","w"="white","y"="yellow"))
mushrooms$population <- revalue(mushrooms$population, c("a"="abundant","c"="clustered","n"="numerous","s"="scattered","v"="several","y"="solitary"))
mushrooms$habitat <- revalue(mushrooms$habitat, c("g"="grasses","l"="leaves","m"="meadows","p"="paths","u"="urban","w"="waste","d"="woods"))
```

========================================================
Let's see what the most prevelant charateristics are of poisonous mushrooms for each category.




```
Error in file(con, "rb") : cannot open the connection
```
