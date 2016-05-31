import { combineReducers } from 'redux';
import VotablesReducer from './reducer_votables';
import UpvoteReducer from './reducer_upvote';
import DownvoteReducer from './reducer_downvote';

const rootReducer = combineReducers({
  votables: VotablesReducer,
  upvote: UpvoteReducer,
  downvote: DownvoteReducer
});

export default rootReducer;
