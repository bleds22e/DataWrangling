

create_capture_hist = function(dat, tag) {
  
  prd <- seq(min(dat$period), max(dat$period))
  
  capture_history = "" # create empty string
    
  for (p in 1:length(prd)) {
      
    tmp <- which(dat$tag == tag & dat$period == prd[p])
      
    if (nrow(dat[tmp, ]) == 0) {
      state = "0"
      capture_history = paste(capture_history, state, sep = "")
    } else {
      state = "1"
      capture_history = paste(capture_history, state, sep = "")
    }
  }
  
  capt_history <- data.frame(capture_history, tag)
    
  return(capt_history)
}
