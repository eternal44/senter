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

export function postVotes(votes) {
  // return (dispatch, getState) => {
  //   axios.post('/api/votes', votes)
  //   .then(function() {
  //     dispatch(fetchVotablesForVote())
  //   })
  //   .catch(function(err) {
  //     console.log(err)
  //   })
  // }

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
