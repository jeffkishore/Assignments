
function fetchData() {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve("Data fetched successfully!");
    }, 3000);
  });
}

// Use async/await
async function getData() {
  console.log("Fetching data...");
  const result = await fetchData();  // Waits until promise resolves
  console.log(result);
  console.log("Process completed.");
}

getData();
