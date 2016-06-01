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
