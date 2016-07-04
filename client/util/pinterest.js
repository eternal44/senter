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

  /* See Pinterest's API endpoints for a list of all possible endpoints:
   * https://developers.pinterest.com/docs/api/pins/
   */
  myPins: function(callback) {
    PDK.me('pins', {fields: 'id,note,image,url,board,counts,creator'}, callback)
  },

  getSession: function() {
    return PDK.getSession()
  }
}

module.exports = Pinterest
