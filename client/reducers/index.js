import { combineReducers } from 'redux'
import VotablesReducer from './reducer_votables'

const rootReducer = combineReducers({
  votables: VotablesReducer,
});

export default rootReducer;
