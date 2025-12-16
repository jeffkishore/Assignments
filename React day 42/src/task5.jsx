function Card(props){
    return(
        <div style={{ border: "2px solid #ccc", padding: "16px", borderRadius: "8px" }}>
            <h3>Name:{props.name}</h3>
            <h3>Age:{props.age}</h3>
            <p>Course:{props.course}</p>
        </div>
    );
}

export default Card;