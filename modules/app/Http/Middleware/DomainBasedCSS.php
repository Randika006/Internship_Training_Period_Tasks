<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;


class DomainBasedCSS
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */

    public function handle(Request $request, Closure $next): Response
    {


        $port = $request->getPort();

        if ($port === 8000) {
            $customCssPath = asset('/css/domain.css');
             view()->share('customCssPath', $customCssPath);

         }elseif($port === 8001){
            $customCssPath = asset('/css/background.css');
            view()->share('customCssPath', $customCssPath);
        }else{
            $customCssPath = asset('/css/other_domain.css');
            view()->share('customCssPath', $customCssPath);
        }
        return $next($request);

    }
}
