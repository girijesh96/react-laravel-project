import Header from './Header';
import {useState} from 'react';

function AddProduct()
{
    const[name,setName]=useState("");
    const[file,setFile]=useState("");
    const[price,setPrice]=useState("");
    const[description,setDescription]=useState("");

    async function AddProduct()
    {
        console.warn(name,file,price,description);
        const formdata=new FormData();
        formdata.append('file',file);
        formdata.append('price',price);
        formdata.append('name',name);
        formdata.append('description',description);
        let result=await fetch("http://localhost:8000/api/addproduct",{
            method:'POST',
            body:formdata
        })
        result=await result.json;
        alert("data added ")
    }

    return(
        
        <div>
            <Header/>
            <div className="col-sm-6 offset-sm-3">

                <input type="text" className="form-control" placeholder="name" onChange={(e)=>setName(e.target.value)}/>
                <input type="file" placeholder="file"  className="form-control" onChange={(e)=>setFile(e.target.files[0])}/>
                <input type="text" className="form-control" placeholder="price" onChange={(e)=>setPrice(e.target.value)}/>
                <input type="text" className="form-control" placeholder="description" onChange={(e)=>setDescription(e.target.value)}/>
                <button onClick={AddProduct}>Add Product</button>
            </div>
        </div>
    )
}
export default AddProduct;