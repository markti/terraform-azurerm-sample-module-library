run "setup_tests" {
    module {
        source = "./tests/setup"
    }
}

run "create_pet_name" {
  command = apply

  variables {
  }

  assert {
    condition     = length(random_pet.main.result) > 0
    error_message = "Name is OK"
  }

}