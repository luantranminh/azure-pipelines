env "azure" {
  src = "file://schema.sql"
  url = "docker://postgres/15/dev?search_path=public"
  dev = "docker://postgres/15/dev?search_path=public"
}


env {
  name = atlas.env
  src  = "file://schema.sql"
  dev  = "docker://postgres/15/dev?search_path=public"
  migration {
    dir = "file://migrations"
    repo {
      name = "testing"
    }
  }
}