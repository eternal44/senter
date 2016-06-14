import axios from 'axios'

export function downvote(votable, vote) {
  return {
    type: 'DOWNVOTE',
    payload: {votable: votable, vote: vote}
  }
}

export function upvote(votable, vote) {
  return {
    type: 'UPVOTE',
    payload: {votable: votable, vote: vote}
  }
}
// make a separate thunk function to integrate action calls
export function postVotesThunk() {
  return (dispatch, getState) => {
    if(getState().votes.length < 15)
      return

    axios.post('/api/votes', getState().votes)
    .then(function() {
      Promise.all([
        dispatch(postVotes()),
        dispatch(fetchVotablesForVote())
      ])
    })
    .catch(function(err) {
      console.log(err)
    })
  }
}

export function postVotes(votes) {
  return {
    type: 'POST_VOTES'
  }
}

export function fetchVotablesForVote() {
  const request = axios.get('/api/votables/users/1')

  return {
    type: 'FETCH_VOTABLES_FOR_VOTE',
    payload: request
  }
}
