## This code will load data from cBioPortal into memory.  The data was 
## obtained on April, 6 2017.  It contains RNA-seq AR expression across 
## the TCGA cancer studies.
# ar.exp <- read.delim("data/AR_Expression_cBioPortal.txt", as.is=TRUE, header=TRUE)
# ar.value <- tapply(log2(ar.exp$Value), ar.exp$Cancer.Study, median)
## below manually entered from TCGA website
# ar.tissue <- c("hematologic", "endocrine", "urologic", "cns", "breast", "gynecologic", "gastrointestinal", "gastrointestinal", "cns", "head and neck", "urologic", "urologic", "urologic", "gastrointestinal", "thoracic", "thoracic", "hematologic", "thoracic", "gynecologic", "gastrointestinal", "endocrine", "urologic", "soft tissue", "skin", "urologic", "hematologic", "endocrine", "gynecologic", "gynecologic", "head and neck")
# cat(ar.value, file="ar_value.txt", sep="\t")
# cat(names(ar.val), file="ar_study.txt", sep="\t")
# cat(ar.tissue, file="ar_tissue.txt", sep="\t")

.get_course_path <- function(){
    tryCatch(swirl:::swirl_courses_dir(),
             error = function(c) {file.path(find.package("swirl"),"Courses")}
    )
}

try(ar.value <- scan(file.path(.get_course_path(), "IntroToR", "Lesson02_Vectors", "ar_value.txt"), sep="\t"), silent=FALSE)

try(ar.study <- scan(file.path(.get_course_path(), "IntroToR", "Lesson02_Vectors", "ar_study.txt"), what="character", sep="\t"), silent=FALSE)

try(ar.tissue <- scan(file.path(.get_course_path(), "IntroToR", "Lesson02_Vectors", "ar_tissue.txt"), what="character", sep="\t"), silent=FALSE)

# ar.value <- scan("ar_value.txt", sep="\t")
# ar.study <- scan("ar_study.txt", what="character", sep="\t")
# ar.tissue <- scan("ar_tissue.txt", what="character", sep="\t")
ar.tissue <- as.factor(ar.tissue)