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
    case 'POST_VOTES':
      // This isn't mutating the state.  It's simply reassigning the reference
      return state = []
    default:
      return state
  }
}

