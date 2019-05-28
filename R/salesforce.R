
#' Retrieve Salesforce IDs from email
#'
#' @param object 
#' @param email 
#'
#' @export
#'
#' @examples
#' sf_retrieve_ids("Contact", "email to lookup") 
#' email_list %>% pmap_df(sf_retrieve_ids)


sf_retrieve_ids <- function(object, email) {
    object <- object
    email <- email
    query <- dplyr::if_else(object == "Lead",
                            paste0("SELECT Email, Id, IsConverted FROM ", object, " WHERE Email = '", email, "'"),
                            paste0("SELECT Email, Id FROM ", object, " WHERE Email = '", email, "'"))
    
    result <- salesforcer::sf_query(query)
    return(result)
}



