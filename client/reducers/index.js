import { combineReducers } from 'redux'
import votables from './reducer_votables'
import votes from './reducer_votes'

const rootReducer = combineReducers({
  votables,
  votes
});

export default rootReducer;
