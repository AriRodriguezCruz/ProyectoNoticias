<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notice;

use DB;

class PageController extends Controller
{
    public function home()
    {
        $notices = Notice::orderBy('id','DESC')->where('status','PUBLISHED')->paginate(3);
        return view("notices", compact('notices'));
    }

    public function notice($slug)
    {
        $notice =  DB::table('notices as n')
        ->join('users as u','u.id','=','n.user_id')
        ->select('n.*','u.name as name_user')
        ->where('slug', $slug)
        ->get();
       
       return view("notice", compact('notice'));
    }
}
