read_luf3 <- function(rep_file) {
  rep_file %>%
    readr::read_csv(show_col_types=FALSE) %>%
    dplyr::select_all(tolower) %>%
    dplyr::rename(lon = longitude, 
         lat = latitude) %>%
    tidyr::unite(date_time, date, time, sep = " ") %>%
    dplyr::mutate(date_time = lubridate::ymd_hms(date_time))
}

