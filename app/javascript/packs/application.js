const habitTab = document.getElementById('footer_habit');
const newTab = document.getElementById("footer_new");
const scoreboardTab = document.getElementById('footer_scoreboard');
const findTab = document.getElementById('footer_find');

const selected = document.getElementsByClassName('selected')[0];

const bodyClass = document.querySelector('body').classList;
console.log(bodyClass);

function removeSelectedFromAll(){
  if (habitTab) {
    habitTab.classList.remove('selected');
  }
  if (newTab) {
    newTab.classList.remove('selected');
  }
  if (scoreboardTab) {
    scoreboardTab.classList.remove('selected');
  }
  if (findTab) {
    findTab.classList.remove('selected');
  }
}

// click Habits
if (bodyClass.contains('habits') && bodyClass.contains('index')) {
  removeSelectedFromAll();
  habitTab.classList.add("selected");
}

// click New
if (bodyClass.contains('habits') && bodyClass.contains('new')) {
  removeSelectedFromAll();
  newTab.classList.add("selected");
}

// click Scoreboards
if (bodyClass.contains('scoreboards') && bodyClass.contains('index')) {
  removeSelectedFromAll();
  scoreboardTab.classList.add("selected");
}

// click New
if (bodyClass.contains('users') && bodyClass.contains('index')) {
  removeSelectedFromAll();
  findTab.classList.add("selected");
}
