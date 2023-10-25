<?php

namespace Modules\Blog\Http\Middleware;;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;


class CheckStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $status=DB::table('blog_posts')->select("status")->where('status', 1)->first();
        if($status){
             return $next($request);
        }else{
            return response()->json('Your form is inactive');
        }

        //return $next($request);
    }
}
