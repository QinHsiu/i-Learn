<?php

namespace Home\Controller;
use Think\Controller;

class UserController extends Controller{
    //查看个人信息

    public function index()
    {
        $id = session('id');
        $data = M('User')->find($id);
        if ($data) {
            session('username', $data['username']);
            session('truename', $data['truename']);
            session('password', $data['password']);
            session('nickname', $data['nickname']);
            session('sex', $data['sex']);
            session('email', $data['email']);
            session('birthday', $data['birthday']);
            session('tel', $data['tel']);
            $this->display();
        }
        else{
            $this->error('查询失败！');
        }
    }




    //注销账号
    public function del(){
        //接收参数
        $id = session('id');
        //$id = I('get.id');
        //模型实例化
        $model = M('User');
        //删除
        $result = $model -> delete($id);
        //判断结果
        if($result){
            //删除成功
            $this -> success('注销成功！',U('Index/index'),'3');
        }else{
            //删除失败
            $this -> error('注销失败！');
        }
    }

    public function register(){
        if(IS_POST){
            //处理表单提交
            $model = M('User');
            //创建数据对象
            $data = $model -> create();
            //添加时间字段
            $data['addtime'] = date('Y-m-d');
            //保存数据表
            //判断是否保存成功
            if ($data['username'] != NULL && $data['password'] != NULL && $data['sex'] != NULL && $data['birthday']
                != NULL && $data['tel'] != NULL && $data['email'] != NULL)
            {
                $result = $model->add($data);
                if ($result) {
                    //成功
                    $this->success('添加成功！', U('Index/index'), 3);
                }else
                {
                    //失败
                    $this->error('添加失败！');
                }

            }
            else{
                $this->error('添加失败！');
            }
        }else{
            //展示模版
            $this -> display();
        }
    }

    //修改密码
    public function edit()
    {
        if(IS_POST){
            $model = M('User');
            $username=session("username");
            $data['password']=$_REQUEST["password"];
            $data['email']=$_REQUEST["email"];
            $data['tel']=$_REQUEST["tel"];
            ///保存操作
            $result=$model->create($data);
            //$result = $model -> save($post);
            //判断结果成功与否
            if($result !== false){
                $Model = $model->where(array("username"=>$username))->save($data);
                //修改成功
                $this -> success('修改成功',U('Public/login'),3);
            }else{
                //修改失败
                $this -> error('修改失败');
            }
        }else{
            //接收id
            $id = I('get.id');
            //实例化模型
            $model = M('User');
            $data = $model -> find($id);
            //变量分配
            $this -> assign('data',$data);
            //展示模版
            $this -> display();
        }
    }


}