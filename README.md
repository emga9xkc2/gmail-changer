<b>1. Cài đặt python 3.9.9. Nhớ tích như hình bên dưới</b>

Link download: https://www.python.org/ftp/python/3.9.9/python-3.9.9-amd64.exe

<img src="setup/images/1.png"/>

<b>2. Giải nén và chạy file setup.bat trong thư mục setup. Quay lại 1 bước. tìm file Gmail Changer mở nó lên là được</b>

https://github.com/emga9xkc2/gmail-changer/archive/refs/heads/main.zip

<b>3. Hướng dẫn sử dụng</b>

[x] Tool chỉ đổi mật khẩu và email khôi phục, mỗi nick 1 lần.<br>
Nếu muốn đổi lại mật khẩu 1 lần nữa. Hãy mở SETTINGS => PASSWORD KEY => đổi các ký tự trong đó thành 4 ký tự khác<br>
Nếu muốn đổi lại email khôi phục 1 lần nữa. Hãy mở SETTINGS => EMAIL RECOVERY DOMAIN => đổi các ký tự trong đó thành 5 ký tự khác kèm @outlook.com<br>
[x] CHANGE IP = 911<br>

1. Tải 911 về máy, đăng nhập tk mk.
2. Mở SETTING => PROXY => 911. Nhập danh sách quốc gia cần random vào. mỗi quốc gia 1 dòng. Ví dụ:<br>
   US<br>
   VN<br>

[x] XÓA MAIL<br>

1. Xuất ra mail<br>
2. Copy mail cần xóa ở file xuất<br>
3. Vào menu chọn Xóa mail. Dán các mail vừa copy vào rồi ấn xóa<br>

[x] VERIFY PHONE<br>

1. Để dùng verify phone. Bấm settings => verify phone. Nhập định dạng như mẫu. (xxxxx là api key lấy ở web sim) ví dụ: https://tempcode.co/api/orders.php | xxxxx | 1<br>
2. Tích chọn verify phone trên giao diện<br>
3. Để cài đặt thời gian đợi code. Bấm HELP => OPEN HCONFIG. Thêm dòng này vào cuối rồi lưu lại: otptimeout = 60<br>
4. Để cài đặt số lần thử lại trên 1 số. Bấm HELP => OPEN HCONFIG. Thêm dòng này vào cuối rồi lưu lại: solanverify1so = 3<br>

<b>Cài đặt thêm</b>

- Nếu change ip bằng vpn hoặc dcom thì cài thêm phần mềm này: https://digi.bib.uni-mannheim.de/tesseract/tesseract-ocr-w64-setup-v5.0.1.20220118.exe

<b>4. Thông tin phiên bản</b>

- v5.1

  Hỗ trợ vpn ipvanish bản mới<br>

- v5.0

  Fix lỗi lấy thông tin youtube<br>

- v4.8

  Fix lỗi không hỗ trợ chrome 102<br>

- v4.7

  Fix lỗi check youtube<br>
  Fix lỗi user32.dll<br>

- v4.6

  Thêm chức năng gom lô mail. (vào web mail để sử dụng)<br>
  Thêm chức năng chạy theo danh sách lô mail, bấm WEB MAIL => LÔ MAIL => Nhập danh sách lô mail. Lô mail này được tạo ra trong lúc thêm mail trên web<br>
  Sửa lỗi bị đứng khi gặp mail yêu cầu xác nhận USB<br>

- v4.4

  Thêm change ip = 911<br>
  Thêm cài change ip sau x lần<br>
  Sửa lỗi check phương thức thanh toán<br>

- v4.2

  Sửa lỗi không đóng chrome khi dùng proxy<br>

- v3.12

  Hỗ trợ định dạng thêm mail. Có thể copy trực tiếp từ excel nhập vào.<br>
  Các định dạng: email|pass|emailrecovery, email pass emailrecovery, email:pass:emailrecovery<br>

- v3.11

  Sửa lỗi đăng xuất thiết bị<br>

- v3.9

  Thêm change ip bằng HMA bản mới nhất<br>

- v3.8

  Fix 1 số lỗi<br>

- v3.0

  Fix lỗi không đóng hết chrome<br>
  Fix xóa mail theo id, tránh xóa nhầm các mail nhập vào giống nhau<br>
  Thêm chức năng random user agent, mặc định có sẵn 328k user agent trong tool<br>
  Thêm xuất mail gồm 4 file: Tất cả, đăng nhập thành công, chưa chạy, đăng nhập thất bại<br>

- v2.6

  Thêm tính năng tắt hình ảnh chrome<br>
  Yêu cầu nhập key khi chạy tool.<br>

- v2.5

  Thêm chức năng check live die, khi chọn chức năng này sẽ chỉ kiểm tra xem mail đó còn tồn tại hay không<br>
  Fix đơ khi dùng chức năng đóng phương thức thanh toán<br>

- v2.4

  Hỗ trợ proxy user pass. Định dạng: `ip:port:user:pass`<br>
  Hỗ trợ nhập key chuyển máy tự do<br>

- v2.3

  Thêm chức năng giới hạn số kênh check youtube. Để dùng chức năng này. mở file hconfig.ini thêm dòng này vào cuối file rồi lưu lại: `limityoutube = 10`<br>
  Số 10 ở trên là giới hạn 10 kênh<br>
  Thêm đếm mail khi đang chạy<br>

- v2.1

  Thêm chạy theo lô mail. Để dùng vào menu WEBMAIL => LÔ MAIL. nhập tên lô mail vào đó. để lấy tên LÔ MAIL lúc ADD MAIL hãy đặt tên lô mail.<br>
  Thêm xuất email khôi phục gợi ý khi đăng nhập thất bại<br>
  Thêm chức năng tự động mở lại tool khi bị tắt. Để dùng chức năng này. mở file hconfig.ini thêm dòng này vào cuối file rồi lưu lại: `autorun = True`
  Và chạy file setup/ProcessManager/ProcessManager.exe<br>

- v2.0

  Thêm xác nhận cảnh báo đăng nhập<br>
  Thêm chức năng UPDATE tool. Nếu muốn cập nhật bản mới. Hãy bấm HELP => UPDATE<br>

- v1.8

  Hỗ trợ định dạng mail nhập vào: mail|pass|mailkhoiphuc|sdtkhoiphuc<br>
  Cập nhật cơ chế thay pass và email khôi phục mới<br>
  Thêm Express VPN<br>
  Fix menu WEBMAIL không bấm được<br>

- v1.7

  Tự file backup file mỗi khi xóa mail (Nhớ xóa nhầm còn có thể lấy lại)<br>
  Random password và email khôi phục trong file. Muốn chỉnh sửa vào SETTINGS chọn PASS WORD hoặc EMAIL RECOVERY (Nếu sửa nhập tối thiểu 10 dòng)<br>
