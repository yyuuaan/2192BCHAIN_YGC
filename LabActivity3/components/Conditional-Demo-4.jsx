function Rainy(){
    return(
        <h1>Bring your umbrella!</h1>
    );
}

function Sunny(){
    return(
        <h1>Bring your sunglasses!</h1>
    );
}

const isRainy = true;

function RainOrShine2(props) {
    const isRainy = props.isRainy;
    return isRainy ? <Rainy /> : <Sunny />
}

export default function TernaryRoS(){
    return (
        <div className={`${isRainy === true ? 'dark' : 'light'}`}>
          <RainOrShine2 />
        </div>
    )
}