<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\NoticeStoreRequest;
use App\Http\Requests\NoticeUpdateRequest;

use Storage;
use DB;

use App\Notice;

class NoticeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notices = Notice::orderBy('id','DESC')
        ->where('user_id', auth()->user()->id)
        ->paginate();
        return view('admin.index', compact('notices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

          
        $notice = Notice::create($request ->all());

        $imagen = "";
        if ($request->hasFile('image')) {

            $rutadestino = "image";
            $archivo = $request->file('image');
            $extension = $archivo->getClientOriginalExtension();
            $fileName = rand(1111,9999)."-user.".$extension;
            $archivo->move($rutadestino,$fileName);
            $imagen = $fileName;
            $notice->fill(['image' => $imagen])->save();
        }

        return redirect()->route('notices.index')
        ->with ('info', 'Noticia creada con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $notice =  DB::table('notices as n')
      ->join('users as u','u.id','=','n.user_id')
      ->select('n.*','u.name as name_user')
      ->where('n.id',$id)
      ->get();

        return view('admin.show', compact('notice'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $notice = Notice::find($id);
        //$this->authorize('pass', $post);
        return view('admin.edit', compact('notice'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $notice = Notice::find($id);
        $notice->fill($request->all());
        $notice->save();
        //$this.authorize('pass',$notice);

         $imagen = "";
        if ($request->hasFile('image')) {

            $rutadestino = "image";
            $archivo = $request->file('image');
            $extension = $archivo->getClientOriginalExtension();
            $fileName = rand(1111,9999)."-user.".$extension;
            $archivo->move($rutadestino,$fileName);
            $imagen = $fileName;
            $notice->fill(['image' => $imagen])->save();
        }

        return redirect()->route('notices.index')->with ('info', 'Noticia editada con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $notice = Notice::find($id)->delete();
       // $this.authorize('pass', $notice);

        return back()->with('info', 'Noticia eliminada correctamente');
    }
}