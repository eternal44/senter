export default function(state = null, action) {
  switch(action.type) {
    case 'UPVOTE':
      return action.payload
    case 'DOWNVOTE':
      return action.payload
  }

  return state
}
