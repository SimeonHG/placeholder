function toggleDarkLight() {
  var switch = document.getElementById("switch");
  var currentClass = switch.className;
  switch.className = currentClass == "dark-mode" ? "light-mode" : "dark-mode";
}