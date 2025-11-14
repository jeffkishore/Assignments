function doTask(callback) {
  setTimeout(() => {
    callback("Task Completed");
  }, 2000);
}

doTask((message) => {
  console.log(message);
});
