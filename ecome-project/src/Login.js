import Header from './Header';
import {useEffect,useState} from 'react';
import {useHistory} from 'react-router-dom';

function Login()
{
    const[email,setEmail]=useState("");
    const[password,setPassword]=useState("");
    const history=useHistory();
    useEffect(()=>{    
        if(localStorage.getItem('user-info'))
        {
            history.push('./add')
        }
        },[])

       async function login()
        {
            console.warn("data",email,password);
            let item={email,password}
            let result=await fetch("http://localhost:8000/api/login",{
                method:'POST',
                headers:{
                    "Content-Type":"application/json",
                    "Accept":"application/json"
                },
                body:JSON.stringify(item)
            });
            result=await result.json();
            localStorage.setItem('user-info',JSON.stringify(result));
            history.push("/add");
        }

    return(
        <div>
            <Header/>
            <div className="col-sm-3 offset-sm-6">
                <h1>Login Page</h1>

                <input type="text" className="form-control" placeholder="email"  value={email} onChange={(e)=>setEmail(e.target.value)}/>
                <br/><br/>
                <input type="password" className="form-control" placeholder="password"  value={password} onChange={(e)=>setPassword(e.target.value)}/>
                <br/><br/>
                <button onClick={login} className="btn btn-primary">Login</button>
            </div>
        </div>
    )
}
export default Login;