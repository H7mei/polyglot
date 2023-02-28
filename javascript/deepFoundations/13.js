// OO and OLOO

// OO = Object Oriented
// OLOO = Object Linked to Other Object

// object.create(prototype)
if (!Object.create) {
  Object.create = function (o) {
    F.prototype = o;
    return new F();
  };
}

// delegation: Desing pattern
var AuthController = {
  auth() {
    server.authenticate(
      [this.username, this.password],
      this.handleResponse.bind(this),
    );
  },
  handleResponse(resp) {
    if (!resp.ok) this.displayError(resp.msg);
  },
};

var LoginFormController = Object.assign(Object.create(AuthController), {
  onsubmit() {
    this.username = this.$username.val();
    this.password = this.$password.val();
    this.auth();
  },
  displayError(msg) {
    alert(msg);
  },
});

// saling terhubung
