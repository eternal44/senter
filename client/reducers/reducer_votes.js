export default function(state = null, action) {
  switch(action.type) {
    case 'UPVOTE':
      debugger
      return action.payload
    case 'DOWNVOTE':
      debugger
      return action.payload
  }

  return state
}
