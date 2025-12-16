function Product(props){
    return(
        <>
        <div id="p">
            <img src={props.image} alt="" />
            <h3>{props.name}</h3>
            <h4>{props.price}</h4>
        </div>
        </>
    );
}

export default Product;