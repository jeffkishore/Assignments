//Build an object user with login and logout methods.
const user = {
  username: "Kishore",

  login() {
    console.log(`${this.username} has logged in.`);
  },

  logout() {
    console.log(`${this.username} has logged out.`);
  }
};
user.login();
user.logout(); 