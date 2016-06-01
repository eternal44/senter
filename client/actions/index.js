export function downvote(vote) {
  return {
    type: 'DOWNVOTE',
    payload: vote
  }
}

export function upvote(vote) {
  return {
    type: 'UPVOTE',
    payload: vote
  }
}
