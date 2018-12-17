workflow "Test and build" {
  on = "push"
}

action "Test" {
  uses = "onbjerg/actions/cargo@master"
  args = "test"
}

action "Build" {
  uses = "onbjerg/actions/cargo@master"
  needs = "Test"
  args = "build --release"
}
