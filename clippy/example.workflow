workflow "Test and build" {
  on = "push"
}

action "Test" {
  uses = "onbjerg/actions/cargo@master"
  args = "test"
}

action "Clippy" {
  uses = "onbjerg/actions/clippy@master"
  needs = "Test"
}
