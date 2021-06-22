import Header from './Header';
import {useState} from 'react';
import {Table} from 'react-bootstrap';



function SearchProduct()
{

    const[button,setButton]=useState(0);
    const[data,setData]=useState([]);
    async function search(key)
    {
        setButton(key.length);
        if(key.length>0)
        {
    let result=await fetch("http://localhost:8000/api/search"+key)
    result=await result.json();
    
    console.warn(result)
    setData(result);
        }
    }

    return(
        
        <div>
            <Header/>
            <div className="col-sm-6 offset-sm-3">
                <h1>Search Component</h1>
                <input type="text" onChange={(e)=>search(e.target.value)} className="form-control" placeholder="searchProduct"/>
                {
                data.length>0&&button>0?
                
                <Table striped bordered hover>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Operations</th>
                    </tr>
                </thead>
                <tbody>
                    {
                    data.map((item)=>
                    <tr>
                        <td>{item.id}</td>
                        <td>{item.name}</td>
                        <td><img style={{width:100}} src={"http://127.0.0.1:8000/"+item.file_path}/></td>
                        <td>{item.description}</td>
                        <td>{item.price}</td>
                    </tr>)
                    }
                </tbody>
            </Table>:null
}
            </div>
        </div>
    )
}
export default SearchProduct;