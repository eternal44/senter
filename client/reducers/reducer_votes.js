import axios from 'axios'

let buildVote = (action) => {
  // TODO:dynamically assing user ID
  const vote = {
    userID: 1,
    votableID: action.payload.votable.votable_id,
    vote: action.payload.vote
  }

  return vote
}

export default function(state = [], action) {
  // Sending off a batch of votes to reduce the number of server calls
  if(state.length > 15) {
    axios.post('/api/votes', state)
    // This isn't mutating the state.  It's simply reassigning the reference
    state = []
  }
  let vote

  switch (action.type) {
    case 'UPVOTE':
      vote = buildVote(action)

      return [
        ...state,
        vote
      ]
    case 'DOWNVOTE':
      vote = buildVote(action)

      return [
        ...state,
        vote
      ]
    default:
      return state
  }
}

