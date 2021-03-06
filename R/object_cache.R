##' @importFrom storr storr
object_cache <- function(prefix, con) {
  dr <- redux::driver_redis_api(prefix, con)
  storr::storr(dr)
}

## TODO: weirdly this is the same thing as object_cache, but a
## different prefix.
file_cache <- function(prefix, con) {
  dr <- redux::driver_redis_api(prefix, con)
  storr::storr(dr)
}
