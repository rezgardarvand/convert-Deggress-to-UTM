 # convert Degress to UTM
angle2dec <- function(data) {
  data <- as.character(data)
  x <- do.call(rbind, strsplit(angle, split=' '))# do.call for creat on function againset lapply - strsplit for seperat data based on symbol like " "
  x <- apply(x, 1L, function(y) {
    y <- as.numeric(y)
    y[1] + y[2]/60 + y[3]/3600 # each of seperat data calculate on hour, minutes and secound
  })
  return(x)
}
obs_data <- as.data.frame(apply(data, 2L, angle2dec))# with apply function you can convert all column in matrix
