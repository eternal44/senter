import axios from 'axios'

export default function(state = [], action) {
  let vote
  if(action.payload) {
    vote = {
      userID: action.payload.votable.user_id,
      votableID: action.payload.votable.votable_id,
      vote: action.payload.vote
    }
  }

  // Sending off a batch of votes to reduce the number of server calls
  if(state.length > 19) {
    axios.post('/api/votes', state)
    // This isn't mutating the state.  It's simply reassigning the reference
    state = []
  }

  switch (action.type) {
    case 'UPVOTE':
      return [
        ...state,
        vote
      ]
    case 'DOWNVOTE':
      return [
        ...state,
        vote
      ]
    default:
      return state
  }
}

