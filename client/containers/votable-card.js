import React, {Component} from 'react'
import {connect} from 'react-redux'
import {upvote, downvote, postVotesThunk, fetchVotablesForVote} from '../actions/index'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  componentWillMount() {
    this.props.fetchVotablesForVote()
  }

  render() {
    const currentVotable = this.props.currentVotable
    if(!this.props.currentVotable) {
      return <div>No more items to vote!</div>
    }

    // this method monitors the length of votes and does
    // a POST request when there are enough votes
    this.props.postVotesThunk(this.props.votes)

    const that = this

    document.onkeydown = function(e){
      if(e.which === 37) {
        that.props.downvote(currentVotable, true)
      } else if(e.which === 39) {
        that.props.upvote(currentVotable, false)
      }
    };

    return (
      <div className='container'>
        <div className='pull-left col-xs-6 box-shadow'>
          <h3>{currentVotable.name}</h3>
          <div>By: {currentVotable.make}</div>
          <img src={currentVotable.photo_url}></img>

          <div className='text-center'>
            <button className="btn-default btn-lg btn-round" onClick = {() => this.props.downvote(currentVotable, false)}>Downvote</button>
            <button className="btn-primary btn-lg btn-round" onClick = {() => this.props.upvote(currentVotable, true)}>Upvote</button>
          </div>
        </div>
      </div>
    )
  }
}

function mapStateToProps(state) {
  return {
    currentVotable: state.votables.currentVotable,
    unvotedVotables: state.votables.unvotedVotables
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote,
    downvote,
    postVotesThunk,
    fetchVotablesForVote
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)
