#Para crear secciones del archivo y facilitar el uso de trabajo
#Se cuenta desde 1
# Strings ####

String <- "This is a string"

class(string)
lenght(string)
nchar(string) #cuenta TODOS los caracteres incluidos blanks, etc.

#Double
number <- 234
class(number)#numeric
typeof(number) #double para nombrar numeros

number_2 <- 1/8
typeof(number_2)

#Intege: para clase de numero como entero
integer <- 2L
class(integer)

#Logical: 0 o 1 (TRUE O 'FALSE ETC)
logical <- FALSE
class(logical)

logical*1
as.logical(0)
as.logical(1)

#Vectores c()
num_vector <- c(1,2,3,4,"a")
length(num_vector)

num_vector_2 <- c(1,2,3,4,"a")
num_vector_2

vec1 <- 1:100
vec2 <- sample(x = 1:100, size = 5, replace = FALSE)
vector("integer", length = 10)

#unir dos vectores
c(num_vector,5,6,7,8)

#broadcasting
log_vec <- c(F,F,T)

as.numeric(num_vector_2)

#Factor
factor_1 <- c("Mon", "Tue", "Wed", "Thu", "Fri")
factor_1 <- factor(factor_1)

#Ordered factors
factor_2 <- c("Mon", "Tue", "Wed", "Thu", "Fri","Sat","Sun","Mon", "Tue", "Wed", "Thu")
factor_2 <- ordered(factor_2, levels=c("Mon", "Tue", "Wed", "Thu", "Fri","Sat","Sun"))

Lists
vector1 <- c(1,2,3,4,5)
vector2 <- c(F,F,T)
vector3 <- letters[1:6]

list_1 <- list(vector1, vector2, vector3)
#Para llamar componente de lista list_1[[2]] - saca solo el vector 2

names(list_1) <- c("A","B","C")
list_1
list_1$C

#Matrix
mat<- matrix(1:10, nrow = 2, ncol = 5)
mat[2,] #indexing para encontrar secciones especificas de un elemento

c(1,2,3,4,5)[c(1,3:5)] #slicing
a <- c(1,2,3,4,5,4,5,4,5)
condicion <- a>=4
a[a>=4]

#Data frames
df <- data.frame(
  col1 = c("This","is","a","vector","of","strings"),
  col2 = 1:6,
  col3 = letters[1:6],
  stringsAsFactors = FALSE
)

df
View(df)
str(df)

df$col2
df$col1[1:2]

df[1,3]
names(df)<- c("column1","column2","column3")

head(df, 2)
tail(df, 3)

nrow(df)
ncol(df)

names(df)[2] <- c("c2")

#Functions of base R (ufunc)
num_vector_3 <- as.numeric(num_vector_2)
is.na(num_vector_3)

num_vector_3[!is.na(num_vector_3)]
mean(num_vector_3, na.rm = TRUE)
mean(num_vector_3[!is.na(num_vector_3)])

df_copy <- data.frame(
  col1 = c("This","is","a", NA,"of","strings"),
  col2 = C(1:5, NA),
  col3 = letters[1:6],
  stringsAsFactors = FALSE
)

df_copy[!is.na(df_copy$col2),]

#Strings 2 ####