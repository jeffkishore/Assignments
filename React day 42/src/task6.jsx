function ProfileCard(props){
    return(
        <div style={{ border: "5px solid #ccc", padding: "16px", borderRadius: "8px" }}>
            <img src={props.image} style ={{width: "100px"}} alt="avatar" />
            <h1>Name : {props.name} </h1>
            <h2>Job : {props.job} </h2>
        </div>
    );
}

export default ProfileCard;