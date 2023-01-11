variable "names" {
  description = "A list of names"
  type = list(string)
  default = ["neo", "trinity", "morepheus"]
}

variable "hero_thousand_faces" {
  description = "map"
  type = map(string)
  default = {
    neo = "hero"
    trinity = "love interest"
    morpheus = "Mentor"
  }
}