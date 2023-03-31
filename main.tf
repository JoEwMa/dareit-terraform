resource "google_storage_bucket" "static-site" {
  name          = "task7"
  location      = "US"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
