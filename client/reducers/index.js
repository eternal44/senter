import { combineReducers } from 'redux'
import votables from './reducer_votables'
import currentVotable from './reducer_currentVotable'

const rootReducer = combineReducers({
  votables,
  currentVotable
});

export default rootReducer;
