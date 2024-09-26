#b) PVR Cinemas wants to save their boxoffice collection where matrix columns will be defined by
#movie names and matrix rows will be defined by movie sequels.
#[Dhoom1, Dhoom 2, and Dhoom 3 - Box office collection: 20cr, 40er, 80er respectively)
#Golmaal 1, Golmaal 2 and Golmaal 3 - Box office collection: 50cr, 65ct, 90or respectively)
#Create a matrix for this data and find out the average collection for movie.
name=c("Dhoom","Golmal")
matrix_boxOffice=matrix(c(20,40,80,50,65,90),nrow = 3,byrow = FALSE)
colnames(matrix_boxOffice)=name
rownames(matrix_boxOffice)=c(1,2,3)
matrix_boxOffice
colMeans(matrix_boxOffice)


########################################################
name=c("Dhoom","Golmal")
matrix_boxOffice=array(c(20,40,80,50,65,90),dim=c(3,2))
colnames(matrix_boxOffice)=name
rownames(matrix_boxOffice)=c(1,2,3)
matrix_boxOffice
colMeans(matrix_boxOffice)