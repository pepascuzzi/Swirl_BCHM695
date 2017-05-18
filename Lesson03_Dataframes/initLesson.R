## make function to generate a plot that illustrates parallel vectors
vectorPlot <- function(){
    plot(c(0, 1), c(0, 1), type="n", yaxt="n", xaxt="n", ylab="", xlab="", 
         bty="n", main="Parallel Vectors")
    text(x=c(0.2, 0.5, 0.8), y=0.9, labels=c("A", "B", "C"), pos=3)
    arrows(0.2, 0.9, 0.2, 0.1, col="red2", lty=1, lwd=20, lend="butt")
    text(x=0.2, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    arrows(0.5, 0.9, 0.5, 0.1, col="deepskyblue2", lty=1, lwd=20, lend="butt")
    text(x=0.5, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    arrows(0.8, 0.9, 0.8, 0.1, col="green2", lty=1, lwd=20, lend="butt")
    text(x=0.8, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    segments(x0=0.2, y0=seq(from=0.8, to=0.2, by=-0.1), x1=0.8, y1=seq(from=0.8, to=0.2, by=-0.1), lty=2)
}

vectorPlotScrambled <- function(){
    plot(c(0, 1), c(0, 1), type="n", yaxt="n", xaxt="n", ylab="", xlab="", 
         bty="n", main="Scrambled Vectors")
    text(x=c(0.2, 0.5, 0.8), y=0.9, labels=c("A", "B", "C"), pos=3)
    arrows(0.2, 0.9, 0.2, 0.1, col="red2", lty=1, lwd=20, lend="butt")
    text(x=0.2, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    arrows(0.5, 0.9, 0.5, 0.1, col="deepskyblue2", lty=1, lwd=20, lend="butt")
    text(x=0.5, y=seq(from=0.8, to=0.2, by=-0.1), labels=c(6, 7, 2, 3, 1, 5, 4))
    arrows(0.8, 0.9, 0.8, 0.1, col="green2", lty=1, lwd=20, lend="butt")
    text(x=0.8, y=seq(from=0.8, to=0.2, by=-0.1), labels=c(2, 1, 5, 6, 4, 7, 3))
}

dataframePlot <- function(){
    plot(c(0, 1), c(0, 1), type="n", yaxt="n", xaxt="n", ylab="", xlab="", 
         bty="n", main="Data Frame")
    text(x=c(0.2, 0.5, 0.8), y=0.9, labels=c("A", "B", "C"), pos=3)
    segments(0.2 , 0.86, 0.8, 0.86, lwd=20, col="grey50", lend="butt")
    arrows(0.2, 0.9, 0.2, 0.1, col="red2", lty=1, lwd=20, lend="butt")
    text(x=0.2, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    arrows(0.5, 0.9, 0.5, 0.1, col="deepskyblue2", lty=1, lwd=20, lend="butt")
    text(x=0.5, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    arrows(0.8, 0.9, 0.8, 0.1, col="green2", lty=1, lwd=20, lend="butt")
    text(x=0.8, y=seq(from=0.8, to=0.2, by=-0.1), labels=1:7)
    segments(x0=0.2, y0=seq(from=0.8, to=0.2, by=-0.1), x1=0.8, y1=seq(from=0.8, to=0.2, by=-0.1), lty=2)
}

dataframeSortPlot <- function(){
    plot(c(0, 1), c(0, 1), type="n", yaxt="n", xaxt="n", ylab="", xlab="", 
         bty="n", main="Sorted Data Frame")
    text(x=c(0.2, 0.5, 0.8), y=0.9, labels=c("A", "B", "C"), pos=3)
    segments(0.2 , 0.86, 0.8, 0.86, lwd=20, col="grey50", lend="butt")
    arrows(0.2, 0.9, 0.2, 0.1, col="red2", lty=1, lwd=20, lend="butt")
    text(x=0.2, y=seq(from=0.8, to=0.2, by=-0.1), labels=c(7, 5, 3, 1, 6, 4, 2))
    arrows(0.5, 0.9, 0.5, 0.1, col="deepskyblue2", lty=1, lwd=20, lend="butt")
    text(x=0.5, y=seq(from=0.8, to=0.2, by=-0.1), labels=c(7, 5, 3, 1, 6, 4, 2))
    arrows(0.8, 0.9, 0.8, 0.1, col="green2", lty=1, lwd=20, lend="butt")
    text(x=0.8, y=seq(from=0.8, to=0.2, by=-0.1), labels=c(7, 5, 3, 1, 6, 4, 2))
    segments(x0=0.2, y0=seq(from=0.8, to=0.2, by=-0.1), x1=0.8, y1=seq(from=0.8, to=0.2, by=-0.1), lty=2)
}

.get_course_path <- function(){
    tryCatch(swirl:::swirl_courses_dir(),
             error = function(c) {file.path(find.package("swirl"),"Courses")}
    )
}

try(ar.exp <- read.delim(file.path(.get_course_path(), "IntroToR", "Lesson03_Dataframes", "AR_Expression_cBioPortal.txt"), header=TRUE, sep="\t", as.is=TRUE))
