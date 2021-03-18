<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    //jangan lupa registrasi middlware ea di kernel.php ok 
    //titik 3 ya sama kk arrray dan roles ya cangkupan banyak
    public function handle(Request $request, Closure $next,...$roles)
    {   
        // dia cekapakah parameter 4role nya ada gk klo ada ekseksusi  pada if 
        if(in_array($request->user()->role,$roles)){
           return $next($request);     
        }
        return redirect('/');
       
    }
}
