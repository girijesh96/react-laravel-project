import Header from './Header';
import {withRouter} from 'react-router-dom';
import {useEffect,useState} from 'react';
import {Button} from 'react-bootstrap';

function UpdateProduct(props)
{
    console.warn("props",props.match.params.id);
    const[data,setData]=useState([]);
    const[name,setName]=useState("");
    const[file,setFile]=useState("");
    const[price,setPrice]=useState("");
    const[description,setDescription]=useState("");

    useEffect(async()=>{
        let result=await fetch("http://localhost:8000/api/product"+props.match.params.id);
        result=await result.json();
        setData(result)
        setName(data.name)
        setPrice(data.price)
        setDescription(data.description)
        setFile(data.file);
    },[])

    async function editProduct(id)
    {
        console.warn(name,file,price,description);
        const formdata=new FormData();
        formdata.append('id',data.id);
        formdata.append('file',file);
        formdata.append('price',price);
        formdata.append('name',name);
        formdata.append('description',description);
        let result=await fetch("http://localhost:8000/api/updateproduct/?_method=PUT",{
            method:'POST',
            body:formdata
        })
        result=await result.json;
        alert("data added ")
    }

    return(
        <div>
            <Header/>
            <h1>Update Product</h1>
            <div className="col-sm-8 offset-sm-4">
          <tr><td>Name</td> <td> <input type="text" onChange={(e)=>setName(e.target.value)} defaultValue={data.name}/></td></tr><br/><br/>
          <tr><td>Price</td> <td><input type="text" onChange={(e)=>setPrice(e.target.value)} defaultValue={data.price}/></td> </tr><br/><br/>
          <tr><td>Description</td><td><input type="text" onChange={(e)=>setDescription(e.target.value)} defaultValue={data.description}/></td> </tr><br/><br/>
          <tr><td>Choose File</td><td><input type="file" onChange={(e)=>setFile(e.target.files[0])} defaultValue={data.file_path}/></td> </tr><br/><br/>

            <img style={{width:50}} src={"http://localhost:8000/"+data.file_path}/>
            <Button onClick={()=>editProduct(data.id)}>Update</Button>
            </div>
        </div>
    )
}
export default withRouter(UpdateProduct);