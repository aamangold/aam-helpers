


#' Set authentication key in .Renviron
#'
#' @description Useful for accessing API keys outside of shared scripts. Key name chosen can be used as a reference on machine going forward.
#' @usage set_key_Renviron(name, key)
#' @param name Name the key will refer to in .Renviron. Should be specific (ie HUBSPOT_KEY, not KEY)
#' @param key Authentication key - or other reference! 
#' @export
#'
#' @examples
#' set_key_Renviron("PRODUCT_KEY", "mykey")
#' keyforscript <- Sys.getenv("PRODUCT_KEY")
 

set_key_Renviron <- function(name, key) {
    
    str <- paste0(name,"=", key, "\n")

    cat(str,
        file=file.path(normalizePath("~/"), ".Renviron"),
        append=TRUE)
    
    print(paste0('Now, restart session and run Sys.getenv(yourkeyname)'))
    
}




