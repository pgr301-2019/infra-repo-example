resource "statuscake_test" "ci" {
  website_name = "app-ci"
  website_url = "${heroku_app.ci.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]
}

resource "statuscake_test" "stage" {
  website_name = "app-stage"
  website_url = "${heroku_app.staging.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}

resource "statuscake_test" "prod" {
  website_name = "app-prod"
  website_url = "${heroku_app.production.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}
