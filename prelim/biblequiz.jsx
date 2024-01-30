function BibleQuiz() {
    return (
        <div>
            <h1>The Bible Quiz</h1>
            <h2>The Bible consists of the Old and New Testaments. </h2>
            <AnswerColor
                visibility={true}
                correction={'correct'} />
            <h2>Moses led the Israelites out of Egypt</h2>
            <AnswerColor
                visibility={true}
                correction={'correct'} />
            <h2>The Sermon on the Mount is found in the Book of Luke</h2>
            <AnswerColor
                visibility={true}
                correction={'incorrect'} />
        </div>
    )
}


function AnswerColor(props) {
    var vis = props.visibility;
    var cor = props.correction;
    if (vis === true){
        if (cor == 'correct') {
            return (
                <p className={`${AnswerColor === true ? 'incorrect' : 'correct'}`}>Correct!</p>
            )
        }
        else if ( cor == 'incorrect') {
            return (
                <p className={`${AnswerColor === true ? 'correct' : 'incorrect'}`}>Incorrect!</p>
            )
        }
    }
    else if (vis === false){
        return
    }
}

export default BibleQuiz;