/*

########################
# MOCK VOTES GENERATOR #
########################

const createVotes = (voteCount, userID, initVotableID) =>{
let voteResult = {
userID: userID,
votesArr: []
}

const voteGenerator = 3;
let count = initVotableID;

while(voteCount){
voteResult.votesArr.push({
votableID: count,
vote: randomBoolGen()
});

count++;
voteCount--;
}
return voteResult;
}

const randomBoolGen = () => {
return Math.random() > 0.5;
}

*/

export default [
  { userID: 2,
    votesArr:
      [ 
        { votableID: 40, vote: false  },
        { votableID: 41, vote: false  },
        { votableID: 42, vote: false  },
        { votableID: 43, vote: false  },
        { votableID: 44, vote: true  },
        { votableID: 45, vote: true  },
        { votableID: 46, vote: true  },
        { votableID: 47, vote: true  },
        { votableID: 48, vote: true  },
        { votableID: 49, vote: true  },
        { votableID: 50, vote: true  },
        { votableID: 51, vote: false  },
        { votableID: 52, vote: true  },
        { votableID: 53, vote: true  },
        { votableID: 54, vote: false  },
        { votableID: 55, vote: true  },
        { votableID: 56, vote: false  },
        { votableID: 57, vote: false  },
        { votableID: 58, vote: false  },
        { votableID: 59, vote: false  }  
      ] 
  },

  { 
    userID: 2,
    votesArr:
      [ 
        { votableID: 20, vote: false  },
        { votableID: 21, vote: false  },
        { votableID: 22, vote: false  },
        { votableID: 23, vote: false  },
        { votableID: 24, vote: false  },
        { votableID: 25, vote: true  },
        { votableID: 26, vote: true  },
        { votableID: 27, vote: false  },
        { votableID: 28, vote: true  },
        { votableID: 29, vote: false  },
        { votableID: 30, vote: true  },
        { votableID: 31, vote: false  },
        { votableID: 32, vote: false  },
        { votableID: 33, vote: true  },
        { votableID: 34, vote: true  },
        { votableID: 35, vote: true  },
        { votableID: 36, vote: false  },
        { votableID: 37, vote: true  },
        { votableID: 38, vote: true  },
        { votableID: 39, vote: true  }  
      ]  
  },

  { 
    userID: 2,
    votesArr:
      [ 
        { votableID: 1, vote: true  },
        { votableID: 2, vote: false  },
        { votableID: 3, vote: true  },
        { votableID: 4, vote: false  },
        { votableID: 5, vote: true  },
        { votableID: 6, vote: true  },
        { votableID: 7, vote: true  },
        { votableID: 8, vote: false  },
        { votableID: 9, vote: true  },
        { votableID: 10, vote: true  },
        { votableID: 11, vote: false  },
        { votableID: 12, vote: false  },
        { votableID: 13, vote: true  },
        { votableID: 14, vote: true  },
        { votableID: 15, vote: false  },
        { votableID: 16, vote: true  },
        { votableID: 17, vote: false  },
        { votableID: 18, vote: false  },
        { votableID: 19, vote: false  }  
      ]  
  }
]
