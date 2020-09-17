<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;

class InputController extends Controller
{
    public function index()
    {
        return view('viewpages.input');
    }
    
    public function displayview(Request $request)
    {
        $input_info = [
            'crnt_date' => date('Y-m-d H:i:s'),
            'todohuken' => $request->todohuken,
            'fname' => $request->first_name,
            'lname' => $request->last_name,
            'viewcnt' => $request->attendance,
            'ip_addr' => $request->ip(),
            'referer' => $request->headers->get('referer'),
            'usr_agent' => $request->userAgent()
        ];

        // ログをファイルに出力する
        Log::info(implode(',', $input_info));

        // 入力データを格納する
        try {
            DB::table('input')->insertGetId(
                $input_info
            );

        } catch (\Exception $e) {
            // 保存に失敗への処理
            Log::error("【前の行の入力データをセーブに失敗】" . $e->getMessage());
        } finally {
            return view('viewpages.viewpage');
        }
    }
}
