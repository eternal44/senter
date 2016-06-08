const INITIAL_STATE = {unvotedVotables: [], currentVotable: null}

export default function(state = INITIAL_STATE, action) {
  const shiftVotables = (state, action) => {
    const newState = state.unvotedVotables.slice(1)

    return Object.assign(
      {},
      state,
      {unvotedVotables: newState, currentVotable: newState[0]}
    ) 
  }

  switch(action.type) {
    case 'FETCH_VOTABLES_FOR_VOTE':
      return Object.assign(
        {},
        state,
        {unvotedVotables: action.payload.data, currentVotable: action.payload.data[0]}
      ) 
    case 'UPVOTE':
      return shiftVotables(state, action)
    case 'DOWNVOTE':
      return shiftVotables(state, action)
    default:
      return state
  }
}
