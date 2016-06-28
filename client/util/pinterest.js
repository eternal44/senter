import Const from './const'

PDK.init({
  appId: Const.PIN_APP,
  cookie: true
})

const Pinterest = {
  login: function(callback) {
    PDK.login({scope: Const.PIN_SCOPE}, callback)
  },

  logout: function(callback) {
    PDK.logout()
  },

  /*
   * Double check docs but I think this returns undefined if
   * user not logged in.
   */
  loggedIn: function() {
    return !!PDK.getSession()
  },

  /*
   * @params {Object} data - {board, note, link, image_url}
   */
  createPin: function(data, callback) {
    PDK.request('/pins/', 'POST', data, callback)
  },

  myBoards: function(callback) {
    PDK.me('boards', {fields: Const.PIN_FIELDS}, callback)
  }
}

module.exports = Pinterest
