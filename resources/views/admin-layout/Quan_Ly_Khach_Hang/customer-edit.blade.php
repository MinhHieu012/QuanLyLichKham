<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa thông tin tài khoản khách hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>
    .a2 {
        font-family: arial, sans-serif;
        border-collapse: collapse;
    }

    .a2 {
        position: relative;
        top: 60px;
        left: 270px;
        width: 1400px;
    }
</style>
<body>
@extends('admin-layout.menu.AdminMenu.AdminLTE.menu')
@section('content2')
    <div>
        <h2 style="position: relative; right: -270px; top: 15px">Sửa thông tin bác sĩ</h2>
        <button type="button" style="position: relative; right: -270px; top: 40px" class="btn btn-primary"
                onclick="window.location.href='{{URL::asset('admin/quanlykhachhang/')}}';">Quay lại
        </button>

        <form method="POST" class="a2">

            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Họ và tên</label>
                <input type="text" class="form-control" id="name" name="name" value="{{$accounts->name}}" required>
            </div>

            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" id="username" name="username" value="{{$accounts->username}}"
                       aria-describedby="emailHelp" required>
                <div class="text">
                    @error('username')
                    <li style="color: red; font-size: 17px; margin-top: 10px">Tên đăng nhập đã tồn tại! Hoặc yêu cầu tối
                        thiểu 4 kí tự và tối đa 30 kí tự
                    </li>
                    @enderror
                </div>
            </div>

            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                <input type="password" class="form-control" id="password" name="password" required>
                @error('password')
                <p style="color: red; font-size: 17px;margin-top: 10px">Mật khẩu phải có 10 kí tự bao gồm ít nhất:
                <li style="color: red; font-size: 17px; padding-bottom: 5px;margin-top: 5px">1 chữ thường</li>
                <li style="color: red; font-size: 17px;padding-bottom: 5px;margin-top: 5px">1 chữ in hoa</li>
                <li style="color: red; font-size: 17px;padding-bottom: 5px;margin-top: 5px">Số 0-9</li>
                <li style="color: red; font-size: 17px;padding-bottom: 5px;margin-top: 5px">Kí tự đặc biệt (@, !, ...)
                </li>
                </p>
                @enderror
            </div>

            <button type="submit" class=" btn btn-success" name="edit" id="edit"><i class="fa-solid fa-user-pen"></i>Sửa
            </button>
        </form>
    </div>
@endsection
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>

