function doTask(callback) {
  console.log("Task is in progress...");
  
  setTimeout(() => {
    callback();
  }, 3000);
}

function onTaskComplete() {
  console.log("Task Completed");
}

doTask(onTaskComplete);
