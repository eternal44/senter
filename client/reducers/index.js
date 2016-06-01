import { combineReducers } from 'redux'
import VotablesReducer from './reducer_votables'
import CurrentVotableReducer from './reducer_currentVotable'

const rootReducer = combineReducers({
  votables: VotablesReducer,
  currentVotable: CurrentVotableReducer
});

export default rootReducer;
