import axios from 'axios'
const ROOT_URL = 'localhost:3000'

export default function(state = [], action) {
  console.log(state)
  if(state.length > 19) {
    axios.post(`${ROOT_URL}/api/votes`, state)
    // as per Dan - this isn't mutating the state.  it's simply reassigning the reference
    state = []
  }

  switch (action.type) {
    case 'UPVOTE':
      return [
        ...state,
        action.payload
      ]
    case 'DOWNVOTE':
      return [
        ...state,
        action.payload
      ]
    default:
      return state
  }
}

