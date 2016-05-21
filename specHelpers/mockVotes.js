/*

########################
# MOCK VOTES GENERATOR #
########################

*/
const createVotes = (voteCount, userID, count) => {
    let votesArr = []

  while(voteCount){
    votesArr.push({
      userID: userID,
      votableID: count,
      vote: randomBoolGen()
    });

    count++;
    voteCount--;
  }
  return votesArr;
}

const randomBoolGen = () => {
  return Math.random() > 0.5;
}

export default [ 
  { userID: 2, votableID: 1, vote: false  },
  { userID: 2, votableID: 2, vote: false  },
  { userID: 2, votableID: 3, vote: true  },
  { userID: 2, votableID: 4, vote: true  },
  { userID: 2, votableID: 5, vote: false  },
  { userID: 2, votableID: 6, vote: true  },
  { userID: 2, votableID: 7, vote: false  },
  { userID: 2, votableID: 8, vote: true  },
  { userID: 2, votableID: 9, vote: false  },
  { userID: 2, votableID: 10, vote: false  },
  { userID: 2, votableID: 11, vote: true  },
  { userID: 2, votableID: 12, vote: false  },
  { userID: 2, votableID: 13, vote: true  },
  { userID: 2, votableID: 14, vote: true  },
  { userID: 2, votableID: 15, vote: true  },
  { userID: 2, votableID: 16, vote: true  },
  { userID: 2, votableID: 17, vote: false  },
  { userID: 2, votableID: 18, vote: false  },
  { userID: 2, votableID: 19, vote: true  },
  { userID: 2, votableID: 20, vote: true  } 
] 
