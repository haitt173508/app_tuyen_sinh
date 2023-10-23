import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';
import 'package:app_tuyen_sinh_flutter/models/tree_menu_item.dart';

var homeData = {
  "code": 200,
  "data": {
    "new_by_category_data": [
      {
        "category": "TIN TỨC ĐẠI HỌC",
        "slug": "tin-tuc-dai-hoc",
        "news": allNews.sublist(0, 6),
      },
      {
        "category": "TIN TỨC SAU ĐẠI HỌC",
        "slug": "tin-tuc-sau-dai-hoc",
        "news": allNews.sublist(3, 8),
      }
    ],
    "archives": [
      {
        'new_id': 0,
        'archive':
            'Cơ sở vật chất thuộc loại tốt nhất trong các trường đại học',
        'img_url': 'https://ts.hust.edu.vn/image/3grn-img005.png/64/64',
        'html_data': '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Cơ sở vật chất thuộc loại tốt nhất trong các trường đại học</h1>
                            <p class="date-created">Thursday, 07/11/2019, 07:30</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Cơ sở vật chất hiện đại, khang trang, thuộc loại tốt nhất trong các trường đại học tại Việt Nam. Trường Đại học Bách Khoa Hà Nội có tổng diện tích phục vụ giảng dạy, nghiên cứu khoa học và hội họp rộng 26,2 hecta. Trường có&nbsp;hơn 200 giảng đường, phòng học, hội trường lớn và hệ thống phòng hội thảo; gần 200 phòng thí nghiệm, trong đó có 12 phòng thí nghiệm trọng điểm quốc gia và khoảng 20 xưởng thực tập, thực hành.</div>
                                                        <p style="text-align: justify;"><b>Trường Đại học Bách Khoa Hà Nội</b>&nbsp;(<i>Hanoi University of Science and Technology)</i>&nbsp;là một trường&nbsp;đại học kỹ thuật&nbsp;hàng đầu đồng thời cũng là một trong những trung tâm nghiên cứu khoa học và chuyển giao công nghệ lớn nhất của Việt Nam.&nbsp;Trường cũng&nbsp;là thành viên của Hiệp hội các trường đại học kỹ thuật hàng đầu khu vực Châu Á - Thái Bình Dương AOTULE (<i>Asia-Oceania Top University League on Engineering</i>).</p>

<p style="text-align: justify;">Trường&nbsp;đã đầu tư cơ sở vật chất tiện nghi, hiện đại phục vụ cho công tác dạy học và nghiên cứu khoa học. 80% giảng đường được đầu tư hệ thống điều hòa công suất lớn với máy chiếu hiện đại, đảm bảo sức khỏe cho sinh viên yên tâm học tập. Hệ thống phòng thí nghiệm đồng bộ với trang thiết bị máy móc hiện đại.</p>

<ul>
	<li style="text-align: justify;"><strong>Khuôn viên Trường&nbsp;</strong>có tổng diện tích<strong>&nbsp;26 ha</strong>&nbsp;(lớn nhất trong các trường đại học khu vực nội thành Hà Nội)</li>
</ul>

<p style="text-align: center;"><img src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-c1.jpg?alt=media&amp;token=cea814e2-d30a-4093-9375-1b669acd299f" style="width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-cau-vong.jpg?alt=media&amp;token=16ba04b0-ad96-4422-9b85-95f30a1f404e" style="height: 400px; width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-chieu-ta.jpg?alt=media&amp;token=adf50585-67b3-4c4e-8c70-1842bcc2033c" style="width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fquangtruong-c1.jpg?alt=media&amp;token=6f30bb9c-f4b3-424b-9080-29686b9947fa" style="width: 600px;"></p>

<p style="text-align: justify;">Môi trường học tập và khuôn viên Trường trong lành<strong>&nbsp;(Trường có diện tích lớn nhất trong nội thành Hà Nội)</strong>, góp phần xây dựng đời sống sinh viên thân thiện và cởi mở. Trường có khu ký túc xá khang trang, sạch sẽ với các sân bóng đá, bóng chuyền, bóng rổ… phục vụ tốt đời sống sinh viên nội trú. Bên cạnh đó, Trường ĐHBK Hà Nội còn là Trường đại học được đầu tư đồng bộ cơ sở vật chất phục vụ các hoạt động thể thao – văn hóa trong và ngoài Trường như: sân vận động tiêu chuẩn quốc tế, bể bơi, sân tennis, nhà thi đấu thường xuyên tổ chức những hoạt động lớn quy mô thành phố, quốc gia.</p>

<p style="text-align: justify;"><strong>Cơ sở vật chất</strong></p>

<p style="text-align: justify;">Sinh viên được trải nghiệm trong môi trường thân thiện, hệ thống cơ sở vật chất hiện đại, đáp ứng nhu cầu học tập, nghiên cứu, tham gia các hoạt động thể thao, giải trí đa dạng.</p>

<p id="yui_patched_v3_11_0_1_1554864162750_1024" style="text-align: justify;"><strong>I. PHÒNG HỌC - GIẢNG ĐƯỜNG</strong></p>

<p id="yui_patched_v3_11_0_1_1554864162750_1037" style="text-align: justify;">Trường Đại học Bách Khoa Hà Nội có tổng diện tích phục vụ giảng dạy, nghiên cứu khoa học và hội họp rộng 26,2 hecta. Trường có&nbsp;<strong>hơn 200 giảng đường, phòng học, hội trường lớn và hệ thống phòng hội thảo; gần 200 phòng thí nghiệm, trong đó có 12 phòng thí nghiệm trọng điểm quốc gia và khoảng 20 xưởng thực tập, thực hành.</strong></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/dtvt-dhbkhn.jpg/bbcd8f06-33a4-4929-b8a0-ff4e179de90e?t=1553134531951"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/1b0dh-bach-khoa-ha-noi.jpg" style="width: 600px; height: 419px;"></p>

<p style="text-align: center;">Sinh viên khoa Điện tử viễn thông - ĐHBKHN trong giờ thực hành</p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fnha-d8.jpg?alt=media&amp;token=8941259f-7914-4fa9-ad0f-b8e5a5662e98" style="height: 450px; width: 600px;"></p>

<p style="text-align: center;">Một lớp học nhà D8</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/300px-NhaD9BK.jpg/6861820b-6e1a-45f7-b72f-d2390e56aeea?t=1553134280809"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/1280px-BKA_NHD.jpg" style="width: 600px; height: 450px;"></p>

<p style="text-align: center;">Nhà D9 Bách Khoa</p>

<ul>
	<li style="text-align: justify;"><strong>Hệ thống 400 phòng học và phòng thí nghiệm</strong>, trong đó có 12 phòng thí nghiệm trọng điểm và đầu tư tập trung, phục vụ hiệu quả công tác đào tạo và nghiên cứu.</li>
</ul>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/b1-toanha.jpg/f5bd5a60-63bd-4e80-a8d6-54b55db5027e?t=1553223438082"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/IMG_7410.jpg" style="width: 600px; height: 400px;"></p>

<p style="text-align: justify;">Trong đó có 8 phòng thí nghiệm trọng điểm quốc gia và tương đương; khoảng 20 xưởng thực tập và thực hành.</p>

<ul>
	<li style="text-align: justify;"><strong>Toàn bộ giảng đường</strong>&nbsp;được trang bị đầy đủ điều hòa và thiết bị giảng dạy cùng hệ thống wifi miễn phí trong khuôn viên Trường.</li>
</ul>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fgiang-duong-dhbkhn.jpg?alt=media&amp;token=76b3d762-8cd3-4623-896f-0fb52a48155c" style="height: 400px; width: 600px;"></p>

<p style="text-align: justify;"><strong>II. CÁC TOÀ NHÀ - THƯ VIỆN</strong></p>

<p style="text-align: justify;">Toàn bộ giảng đường được trang bị đầy đủ điều hòa và thiết bị giảng dạy cùng với hệ thống wifi miễn phí trong khuôn viên Trường.&nbsp;<strong>Thư viện điện tử Tạ Quang Bửu&nbsp;</strong>với&nbsp;<strong>diện tích 37.000 m2</strong>, có thể&nbsp;<strong>phục vụ đồng thời 2.000 sinh viên với 600.000 cuốn sách, 130.000 đầu sách điện tử</strong>. Sinh viên được&nbsp;<strong>truy cập miễn phí CSDL từ các nguồn như Science Driect, Scopus…</strong></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/71832176_701500016998753_4214244798715920384_o.jpg" style="width: 600px; height: 468px;"></p>

<p style="text-align: justify;">Thư viện Tạ Quang Bửu là&nbsp;thư viện lớn và hiện đại, thư viện có hội trường lớn (ở Tầng 10)&nbsp;với sức chứa hàng nghìn người</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/tqb.jpg" style="width: 600px; height: 400px;"></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/diem-danh-10-truong-dai-hoc-co-thu-vien-dep-nhat-viet-nam-a.jpg" style="width: 600px; height: 485px;"></p>

<p style="text-align: justify;">Tổng diện tích đất sử dụng của Trường:&nbsp;<strong>252.857,8 m², nơi làm việc 15.252m², nơi học 78.846m², nơi vui chơi giải trí: 29.321 m²</strong>,<strong>&nbsp;1 nhà câu lạc bộ sinh viên với 350 chỗ được trang bị âm thanh hiện đại và 1 trung tâm Y tế</strong>&nbsp;hoạt động theo mô hình phòng khám đa khoa chăm sóc sức khỏe thường xuyên cho các cán bộ và sinh viên Trường.</p>

<p style="text-align: justify;"><strong>III. KHU KÝ TÚC XÁ</strong></p>

<p style="text-align: justify;">Trường có một&nbsp;<strong>khu ký túc xá với 420 phòng, đủ khả năng đáp ứng chỗ ở cho khoảng 4500 sinh viên.</strong></p>

<ul>
	<li style="text-align: justify;"><strong>Trung tâm Ký túc xá&nbsp;</strong>khang trang đáp ứng nhu cầu lưu trú của gần&nbsp;<strong>4.500</strong>&nbsp;sinh viên.</li>
</ul>

<p id="yui_patched_v3_11_0_1_1554106762583_1040" style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fktx-bach-khoa-1.jpg?alt=media&amp;token=d3826b5b-acc3-4870-8348-5c122699a11e" style="height: 288px; width: 600px;"></p>

<p style="text-align: center;">Hình ảnh khu ký túc xá sinh viên&nbsp;kỹ thuật tại Bách Khoa. Sinh viên được sử dụng Wifi FREE đến tận giường</p>

<p style="text-align: center;"><strong><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/ktx-b5.jpg/8285fd18-afbe-49f7-9e23-6710ad39ce24?t=1553222250000"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3349_5.jpg" style="width: 600px; height: 451px;"></strong></p>

<p style="text-align: center;">Khu Ký túc xá nhà B5</p>

<p style="text-align: justify;"><strong>IV. CƠ SỞ VẬT CHẤT&nbsp;- RÈN LUYỆN THỂ DỤC THỂ THAO</strong></p>

<p style="text-align: justify;">Các hệ thống cơ sở vật chất phục vụ bộ môn giáo dục thể chất và phong trào thể thao của sinh viên đầy đủ và hiện đại với&nbsp;<strong>1 sân bóng tiêu chuẩn quốc gia, 1 nhà thi đấu đa năng tiêu chuẩn&nbsp;</strong><strong>Đông Nam Á</strong><strong>,&nbsp;</strong><strong>1 bể bơi tiêu chuẩn quốc gia, sân tennis tiêu chuẩn quốc gia...&nbsp;</strong><strong>Khu liên hợp thể thao&nbsp;</strong>có diện tích<strong>&nbsp;20.000m2&nbsp;</strong>với hệ thống cơ sở vật chất hiện đại, bao gồm: sân bóng, bể bơi, sân tennis tiêu chuẩn quốc gia và nhà thi đấu đa năng tiêu chuẩn Đông Nam Á.</p>

<p style="text-align: justify;"><strong>1. Sân vận động</strong>&nbsp;diện tích 18.000m2&nbsp;bao gồm khán đài A - B với sức chứa 7.000 người, trong sân có sân bóng đá, 3 sân bóng chuyền, 1 sân bóng rổ, 1 khu tập thể dục và khu tập điền kinh (chạy 100m, 1500m, nhảy cao, nhảy xa, đẩy tạ, phóng lao…). Có dàn đèn phục vụ tập luyện buổi tối và nhiều phòng phụ trợ dưới khán đài A - B.</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/sanss.jpg/6fbfcb17-95fe-4ddb-8a92-f67ebedda1a7?t=1553225553660"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sanss.jpg" style="width: 600px; height: 255px;"></p>

<p style="text-align: justify;">Đại học Bách khoa có sân bóng tiêu chuẩn quốc gia, một nhà thi đấu đa năng tiêu chuẩn Đông Nam Á</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sbk.jpg" style="width: 600px; height: 449px;"></p>

<p style="text-align: justify;"><strong>2. Khu bể bơi, sân quần vợt :</strong>&nbsp;diện tích 4.800m2</p>

<p style="text-align: justify;">- Bể bơi kích thước 25x50m, có lọc nước tuần hoàn, có khán đài sức chứa 500 người.</p>

<p style="text-align: justify;">- Sân quần vợt: 1 sân</p>

<p style="text-align: center;">&nbsp;<img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fsan-the-thao-LG-Hausys-03.jpg?alt=media&amp;token=09af3863-7b49-48e8-91aa-3459e30f60f8" style="height: 450px; width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fnha-thi-dau-bk2.jpg?alt=media&amp;token=dd23dc39-246d-42e7-aa2d-293bbda6c5fa" style="height: 377px; width: 600px;"></p>

<p style="text-align: justify;"><strong>3. Nhà tập luyện và thi đấu:</strong>&nbsp;diện tích 4.800m2</p>

<p style="text-align: justify;">Nhà tập đa năng có khán đài A - B sức chứa 1258 chỗ ngồi, và được trang bị rất hiện đại, hệ thống thông tin, điều hòa trung tâm và nhiều phòng phụ trợ, văn phòng – phục vụ cho các giải thể thao sinh viên cũng như quốc tế.</p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2FTrung-tam-the-thao-BK_01.jpg?alt=media&amp;token=4fa673ed-1e48-4a32-9076-e1531a54c5fe" style="height: 381px; width: 600px;">&nbsp;</p>

<p style="text-align: justify;"><strong>4. Khu tập luyện ký túc xá:</strong>&nbsp;diện tích 4.000m2</p>

<p style="text-align: justify;">Bao gồm: khu sân bóng rổ, 1 khu tập thể dục dụng cụ và 2 sân bóng đá 7 người.&nbsp;</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3337_2.jpg" style="width: 600px; height: 399px;"></p>

<p style="text-align: justify;">Sân bóng đá&nbsp;nằm ngay sau lưng của tòa nhà B9</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/san-bong-bk2.jpg/9d3d338c-b98f-48d3-b59e-c0cd01bef9b3?t=1553222706842"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3332_1.jpg" style="width: 600px; height: 398px;"></p>

<p style="text-align: justify;">Sân bóng với mặt cỏ nhân tạo hiện đại - không gian tập thể thao lý tưởng cho sinh viên</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/sanbongchuyen.jpg/0a57ed24-4e66-4e4e-83ef-8a4e8b0d78d6?t=1553222743906"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sbk2.jpg" style="width: 600px; height: 398px;"></p>

<p style="text-align: justify;">Sân tập bóng chuyền cho sinh viên</p>

<ul>
	<li style="text-align: justify;"><strong>Trung tâm Y tế</strong>&nbsp;hoạt động theo mô hình phòng khám đa khoa chăm sóc sức khỏe thường xuyên cho các cán bộ và sinh viên Trường.</li>
</ul>

<p style="text-align: center;"><img alt="" src="/public/admin/uploads/files/Quy%20doi/ttyte2.jpg" style="width: 600px; height: 450px;"></p>

<p style="text-align: center;">Địa chỉ của trung tâm đặt tại Số 5 Tạ Quang Bửu, Q.Hai Bà Trưng, Hà Nội</p>

<p style="text-align: right;">TS.HUST.EDU.VN</p>
                        </div>
                        <div class="social-share clearfix">
                            <ul class="comment-like clearfix">
                                <li class="ic-like">
                                                                                                                         <a href="https://ts.hust.edu.vn/tai-khoan/like" class="like-post" data-log="1" data-token="TzZS3QRVi0TmDQIyhmbyzVZNx5lDNI46aPN6O36b"><i class="far fa-heart" data-value="354"></i></a>
                                                                                                                <span>Lưu tin</span>
                                </li>
                                <li class="ic-comment">
                                    <a href="#" class="comment" data-toggle="modal" data-target="#notify-op"><i class="fas fa-comment-alt"></i></a>
                                    <span>Bình luận</span>
                                </li>
                            </ul>
                            <ul class="social-icons">
                                <li><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;title=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc" class="facebook" target="_blank"><i class="fab fa-facebook-f"></i></a></li><li><a href="https://mail.google.com/mail/?su=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc&amp;body=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%0Ahttps%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;view=cm&amp;fs=1&amp;to&amp;ui=2&amp;tf=1" class="gmail" target="_blank"><i class="fab fa-google"></i></a></li><li><a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;text=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li class="txt">Chia sẻ</li>
                            </ul>
                        </div>
                        
                    </div>''',
      },
      {
        'new_id': 1,
        'archive': 'TOP 801-1000 trường đại học tốt nhất thế giới',
        'img_url': 'https://ts.hust.edu.vn/image/3dqy-img001.png/64/64',
        'html_data': '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">TOP 801-1000 trường đại học tốt nhất thế giới</h1>
                            <p class="date-created">Thursday, 07/11/2019, 07:27</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Đại học Bách khoa Hà Nội lọt vào top 801-1000 trong bảng xếp hạng TIMES HIGHER EDUCATION 2020</div>
                                                        <p style="text-align: justify;"><span style="font-size:14px;">19h ngày 11/9/2019 theo giờ London (tức 1h sáng ngày 12/9 theo giờ Hà Nội), Times Higher Education (THE) đã công bố bảng xếp hạng các trường Đại học tốt nhất thế giới THE WUR (Times Higher Education World University Ranking), theo đó Đại học Bách Khoa Hà Nội cùng với Đại học Quốc gia Hà Nội&nbsp;lọt vào top 801-1000, Đại học Quốc gia TP HCM vào top 1000+.</span></p>

<p style="text-align: center;"><span style="font-size:14px;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/fb_card.png" style="width: 600px; height: 315px;"></span></p>

<p style="text-align: center;"><span style="font-size:14px;">(Nguồn:&nbsp;<a href="https://www.timeshighereducation.com/world-university-rankings/2020/world-ranking">https://www.timeshighereducation.com/world-university-rankings/2020/world-ranking</a>)</span></p>

<p style="text-align: justify;"><span style="font-size:14px;">THE WUR được coi là một trong những bảng xếp hạng độc lập và có uy tín nhất, đánh giá các trường đại học dựa trên 13 chỉ số chia làm 5 nhóm:</span></p>

<ul>
	<li style="text-align: justify;"><span style="font-size:14px;">Đào tạo (chất lượng môi trường học tập và giảng dạy): 30%;</span></li>
	<li style="text-align: justify;"><span style="font-size:14px;">Nghiên cứu (năng suất, thu nhập và danh tiếng): 30%</span></li>
	<li style="text-align: justify;"><span style="font-size:14px;">Trích dẫn (ảnh hưởng nghiên cứu): 30%</span></li>
	<li style="text-align: justify;"><span style="font-size:14px;">Hiện diện quốc tế (thu hút giảng viên, sinh viên và hợp tác nghiên cứu quốc tế) 7,5%</span></li>
	<li style="text-align: justify;"><span style="font-size:14px;">Nguồn thu từ hợp tác với doanh nghiệp (Hiệu quả chuyển giao tri ​​thức): 2,5%</span></li>
</ul>

<p style="text-align: justify;"><span style="font-size:14px;">Đánh giá về bảng xếp hạng THE WUR, PGS. Hoàng Minh Sơn – Hiệu trưởng nhà trường nhận định “Hầu hết các bảng xếp hạng đều coi trọng các chỉ số đánh giá thành tích nghiên cứu mà ít đánh giá sát thực chất lượng đào tạo và tác động xã hội. Trong bảng xếp hạng của THE thì các chỉ số năng suất, uy tín và ảnh hưởng nghiên cứu đã chiếm tới 60%, ngay cả tiêu chí chất lượng giảng dạy cũng lại căn cứ vào quy mô đào tạo tiến sĩ (8,25%) và ý kiến bình chọn của các học giả có thành tích cao về nghiên cứu (15%) tức một phần nào đó cũng gián tiếp phản ánh năng lực nghiên cứu. Nếu tính thêm cả chỉ số về chuyển giao tri thức và hợp tác công bố quốc tế nữa thì có thể nói các tiêu chí liên quan trực tiếp hay gián tiếp tới nghiên cứu đã chiếm trọng số tới hơn 90%. Trong khi đó, những chỉ số phản ánh sát thực nhất chất lượng đào tạo như mức độ nỗ lực của người học, mức độ hài lòng của người học, tỉ lệ việc làm của người tốt nghiệp, mức độ gia tăng thu nhập khi tốt nghiệp thì chưa thấy bảng xếp hạng uy tín nào đề cập tới. Đó cũng là một vấn đề chúng ta cần suy ngẫm khi xây dựng chiến lược phát triển, cần phải quan tâm tới cả 3 nhiệm vụ cốt lõi trong sứ mạng của một trường đại học là đào tạo, nghiên cứu và phục vụ cộng đồng”.</span></p>

<p style="text-align: justify;"><span style="font-size:14px;">Đại học Bách khoa Hà Nội rất vui mừng vì ngày càng có nhiều trường đại học của Việt Nam lọt vào các bảng xếp hạng quốc tế, như vậy là mục tiêu có 4 cơ sở giáo dục đại học&nbsp;lọt vào top 1000 thế giới theo Đề án nâng cao chất lượng giáo dục đại học giai đoạn 2019 – 2025 (đã được Thủ tướng phê duyệt) đã đạt được sớm 6 năm. Trong thời gian tới, các trường đại học trong nước cần hợp tác chặt chẽ, toàn diện và hiệu quả hơn, thay vì cho đến nay chỉ chú trọng hợp tác quốc tế.</span></p>

<p style="text-align: center;"><span style="font-size:14px;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/xep-hang1-5623-1568254887.jpg" style="width: 600px; height: 413px;"></span></p>

<p style="text-align: center;"><span style="font-size:14px;">Thứ hạng các đại học Việt Nam trong bảng xếp hạng THE. Ảnh:&nbsp;<em>timeshighereducation</em></span></p>
                        </div>
                        <div class="social-share clearfix">
                            <ul class="comment-like clearfix">
                                <li class="ic-like">
                                                                                                                         <a href="https://ts.hust.edu.vn/tai-khoan/like" class="like-post" data-log="1" data-token="TzZS3QRVi0TmDQIyhmbyzVZNx5lDNI46aPN6O36b"><i class="far fa-heart" data-value="350"></i></a>
                                                                                                                <span>Lưu tin</span>
                                </li>
                                <li class="ic-comment">
                                    <a href="#" class="comment" data-toggle="modal" data-target="#notify-op"><i class="fas fa-comment-alt"></i></a>
                                    <span>Bình luận</span>
                                </li>
                            </ul>
                            <ul class="social-icons">
                                <li><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Ftop-801-1000-truong-dai-hoc-tot-nhat-the-gioi&amp;title=TOP%20801-1000%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20t%E1%BB%91t%20nh%E1%BA%A5t%20th%E1%BA%BF%20gi%E1%BB%9Bi" class="facebook" target="_blank"><i class="fab fa-facebook-f"></i></a></li><li><a href="https://mail.google.com/mail/?su=TOP%20801-1000%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20t%E1%BB%91t%20nh%E1%BA%A5t%20th%E1%BA%BF%20gi%E1%BB%9Bi&amp;body=TOP%20801-1000%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20t%E1%BB%91t%20nh%E1%BA%A5t%20th%E1%BA%BF%20gi%E1%BB%9Bi%0Ahttps%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Ftop-801-1000-truong-dai-hoc-tot-nhat-the-gioi&amp;view=cm&amp;fs=1&amp;to&amp;ui=2&amp;tf=1" class="gmail" target="_blank"><i class="fab fa-google"></i></a></li><li><a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Ftop-801-1000-truong-dai-hoc-tot-nhat-the-gioi&amp;text=TOP%20801-1000%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20t%E1%BB%91t%20nh%E1%BA%A5t%20th%E1%BA%BF%20gi%E1%BB%9Bi" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li class="txt">Chia sẻ</li>
                            </ul>
                        </div>
                        
                    </div>''',
      },
      {
        'new_id': 2,
        'archive':
            'Bốn nhóm ngành của ĐHBK Hà Nội tăng hạng vào tốp 400 và 500 thế giới theo Xếp hạng QS 2020',
        'img_url': 'https://ts.hust.edu.vn/image/3gb3-img002.png/64/64',
        'html_data': '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Bốn nhóm ngành của ĐHBK Hà Nội tăng hạng vào tốp 400 và 500 thế giới theo Xếp hạng QS 2020</h1>
                            <p class="date-created">Thursday, 07/11/2019, 07:28</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Năm 2019, ĐHBKHN có tới ba nhóm ngành lọt top 550 ngành tốt nhất thế giới là Kỹ thuật Cơ khí, Hàng không và Chế tạo (Top 451-500); Kỹ thuật điện - Điện tử (Top 401-450); Khoa học máy tính và Hệ thống thông tin (Công nghệ thông tin) (Top 501-550).</div>
                                                        <p><strong>Bảng xếp hạng các trường đại học trên thế giới theo lĩnh vực của tổ chức QS 2020</strong>&nbsp;được công bố vào ngày 04/03/2020. Bảng xếp hạng này đánh giá thứ tự các trường đại học tốt nhất thế giới theo từng lĩnh vực, bao gồm 48 nhóm ngành chia thành 5 lĩnh vực chính. Bảng xếp hạng năm 2020 đưa&nbsp;vào&nbsp;xếp&nbsp;hạng&nbsp;1,368 trường từ 158 quốc gia.</p>

<p style="text-align: center;"><img alt="" src="http://ts.hust.edu.vn/public/admin/uploads/files/Hoi%20-%20Dap/Presentation4.jpg" style="height: 396px; width: 600px;"></p>

<p style="text-align: justify;">Các&nbsp;chỉ&nbsp;số&nbsp;đánh giá của bảng xếp hạng&nbsp;năm nay&nbsp;tập trung vào 4 tiêu&nbsp;chí:&nbsp;uy tín trong&nbsp;giới học giả&nbsp;(Academic Reputation), uy tín đối&nbsp;với nhà&nbsp;tuyển dụng (Employer Reputation),&nbsp;số&nbsp;trích dẫn trung bình trên một bài báo (Citations per paper) và chỉ số H-index (đo lường năng suất và mức độ tác động của các công bố khoa học). Uy tín trong giới học&nbsp;giả&nbsp;được&nbsp;đánh giá với trọng số cao nhất&nbsp;(chiếm đến 40%), chứng tỏ tầm ảnh hưởng của nhận định từ các đồng&nbsp;nghiệp&nbsp;đối với các trường đại học trong lĩnh vực của họ.&nbsp;Bên&nbsp;cạnh đó,&nbsp;năm nay&nbsp;có&nbsp;22 triệu công&nbsp;bố khoa học&nbsp;cùng với 200 triệu trích dẫn đã được phân tích để đưa ra số liệu cho bảng xếp hạng này.</p>

<p style="text-align: justify;">So&nbsp;với năm 2019, cả&nbsp;3&nbsp;nhóm ngành của ĐHBK Hà Nội từng được xếp hạng trong lĩnh vực Kỹ thuật &amp; Công nghệ thông&nbsp;tin&nbsp;đều tăng&nbsp;từ 50 đến 100 bậc và tiếp tục duy trì vị trí số 1 Việt Nam.&nbsp;Trong&nbsp;khi đó,&nbsp;ngành Toán học của Trường lần đầu tiên lọt vào Top&nbsp;500 của&nbsp;bảng xếp hạng&nbsp;này và xếp thứ 2 Việt Nam, khẳng định vai trò và vị thế quan trọng của Toán học trong một trường đại học hàng đầu về kỹ thuật và công nghệ.</p>

<center>
<table border="1" cellpadding="1" cellspacing="1" width="481">
	<tbody>
		<tr>
			<td>
			<p align="center"><strong>Lĩnh vực</strong></p>
			</td>
			<td>
			<p align="center"><strong>Nhóm ngành</strong></p>
			</td>
			<td>
			<p align="center"><strong>Thứ hạng trong nước</strong></p>
			</td>
			<td>
			<p align="center"><strong>Thứ hạng toàn</strong><strong>&nbsp;cầu</strong><strong>&nbsp;2020</strong></p>
			</td>
			<td>
			<p align="center"><strong>Thứ hạng toàn cầu 2019</strong></p>
			</td>
		</tr>
		<tr>
			<td rowspan="3">
			<p align="center"><strong><em>Kỹ thuật &amp; Công nghệ thông tin</em></strong></p>
			</td>
			<td>
			<p>Kỹ thuật Điện - Điện tử;</p>
			</td>
			<td>
			<p align="center">1</p>
			</td>
			<td>
			<p align="center">351-400</p>
			</td>
			<td>
			<p align="center">401-450</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Kỹ thuật Cơ khí, Hàng không và Chế tạo</p>
			</td>
			<td>
			<p align="center">1</p>
			</td>
			<td>
			<p align="center">351-400</p>
			</td>
			<td>
			<p align="center">451-500</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Khoa học máy tính và Hệ thống thông tin</p>
			</td>
			<td>
			<p align="center">1</p>
			</td>
			<td>
			<p align="center">451-500</p>
			</td>
			<td>
			<p align="center">501-550</p>
			</td>
		</tr>
		<tr>
			<td>
			<p align="center"><strong><em>Khoa học tự nhiên</em></strong></p>
			</td>
			<td>
			<p>Toán học</p>
			</td>
			<td>
			<p align="center">2</p>
			</td>
			<td>
			<p align="center">451-500</p>
			</td>
			<td>
			<p align="center">&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
</center>

<p style="text-align: justify;">Trong&nbsp;năm 2019, ĐHBK Hà Nội cũng được xếp&nbsp;ở&nbsp;vị trí&nbsp;351-400 thế&nbsp;giới và vị trí thứ 4 Đông Nam Á về lĩnh vực Kỹ thuật và Công nghệ&nbsp;theo&nbsp;một bảng xếp hạng có uy tín khác, bảng xếp hạng THE World University Ranking by Subject.&nbsp;Những&nbsp;kết quả này tiếp&nbsp;tục&nbsp;khẳng định&nbsp;uy tín và tầm ảnh hưởng&nbsp;của ĐHBK Hà Nội&nbsp;trong lĩnh vực khoa học và công nghệ&nbsp;đã vươn ra tầm khu vực và thế giới.</p>
                        </div>
                        <div class="social-share clearfix">
                            <ul class="comment-like clearfix">
                                <li class="ic-like">
                                                                                                                         <a href="#" class="like-post disabled"><i class="fas fa-heart" data-value="351"></i></a>
                                                                                                                <span>Lưu tin</span>
                                </li>
                                <li class="ic-comment">
                                    <a href="#" class="comment" data-toggle="modal" data-target="#notify-op"><i class="fas fa-comment-alt"></i></a>
                                    <span>Bình luận</span>
                                </li>
                            </ul>
                            <ul class="social-icons">
                                <li><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fbon-nhom-nganh-cua-dhbk-ha-noi-tang-hang-vao-top-400-va-500-the-gioi-theo-xep-hang-qs-2020&amp;title=B%E1%BB%91n%20nh%C3%B3m%20ng%C3%A0nh%20c%E1%BB%A7a%20%C4%90HBK%20H%C3%A0%20N%E1%BB%99i%20t%C4%83ng%20h%E1%BA%A1ng%20v%C3%A0o%20t%E1%BB%91p%20400%20v%C3%A0%20500%20th%E1%BA%BF%20gi%E1%BB%9Bi%20theo%20X%E1%BA%BFp%20h%E1%BA%A1ng%20QS%202020" class="facebook" target="_blank"><i class="fab fa-facebook-f"></i></a></li><li><a href="https://mail.google.com/mail/?su=B%E1%BB%91n%20nh%C3%B3m%20ng%C3%A0nh%20c%E1%BB%A7a%20%C4%90HBK%20H%C3%A0%20N%E1%BB%99i%20t%C4%83ng%20h%E1%BA%A1ng%20v%C3%A0o%20t%E1%BB%91p%20400%20v%C3%A0%20500%20th%E1%BA%BF%20gi%E1%BB%9Bi%20theo%20X%E1%BA%BFp%20h%E1%BA%A1ng%20QS%202020&amp;body=B%E1%BB%91n%20nh%C3%B3m%20ng%C3%A0nh%20c%E1%BB%A7a%20%C4%90HBK%20H%C3%A0%20N%E1%BB%99i%20t%C4%83ng%20h%E1%BA%A1ng%20v%C3%A0o%20t%E1%BB%91p%20400%20v%C3%A0%20500%20th%E1%BA%BF%20gi%E1%BB%9Bi%20theo%20X%E1%BA%BFp%20h%E1%BA%A1ng%20QS%202020%0Ahttps%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fbon-nhom-nganh-cua-dhbk-ha-noi-tang-hang-vao-top-400-va-500-the-gioi-theo-xep-hang-qs-2020&amp;view=cm&amp;fs=1&amp;to&amp;ui=2&amp;tf=1" class="gmail" target="_blank"><i class="fab fa-google"></i></a></li><li><a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fbon-nhom-nganh-cua-dhbk-ha-noi-tang-hang-vao-top-400-va-500-the-gioi-theo-xep-hang-qs-2020&amp;text=B%E1%BB%91n%20nh%C3%B3m%20ng%C3%A0nh%20c%E1%BB%A7a%20%C4%90HBK%20H%C3%A0%20N%E1%BB%99i%20t%C4%83ng%20h%E1%BA%A1ng%20v%C3%A0o%20t%E1%BB%91p%20400%20v%C3%A0%20500%20th%E1%BA%BF%20gi%E1%BB%9Bi%20theo%20X%E1%BA%BFp%20h%E1%BA%A1ng%20QS%202020" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li class="txt">Chia sẻ</li>
                            </ul>
                        </div>
                        
                    </div>''',
      },
      {
        'new_id': 3,
        'archive':
            'Cơ sở vật chất thuộc loại tốt nhất trong các trường đại học',
        'img_url': 'https://ts.hust.edu.vn/image/3grn-img005.png/64/64',
        'html_data': '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Cơ sở vật chất thuộc loại tốt nhất trong các trường đại học</h1>
                            <p class="date-created">Thursday, 07/11/2019, 07:30</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Cơ sở vật chất hiện đại, khang trang, thuộc loại tốt nhất trong các trường đại học tại Việt Nam. Trường Đại học Bách Khoa Hà Nội có tổng diện tích phục vụ giảng dạy, nghiên cứu khoa học và hội họp rộng 26,2 hecta. Trường có&nbsp;hơn 200 giảng đường, phòng học, hội trường lớn và hệ thống phòng hội thảo; gần 200 phòng thí nghiệm, trong đó có 12 phòng thí nghiệm trọng điểm quốc gia và khoảng 20 xưởng thực tập, thực hành.</div>
                                                        <p style="text-align: justify;"><b>Trường Đại học Bách Khoa Hà Nội</b>&nbsp;(<i>Hanoi University of Science and Technology)</i>&nbsp;là một trường&nbsp;đại học kỹ thuật&nbsp;hàng đầu đồng thời cũng là một trong những trung tâm nghiên cứu khoa học và chuyển giao công nghệ lớn nhất của Việt Nam.&nbsp;Trường cũng&nbsp;là thành viên của Hiệp hội các trường đại học kỹ thuật hàng đầu khu vực Châu Á - Thái Bình Dương AOTULE (<i>Asia-Oceania Top University League on Engineering</i>).</p>

<p style="text-align: justify;">Trường&nbsp;đã đầu tư cơ sở vật chất tiện nghi, hiện đại phục vụ cho công tác dạy học và nghiên cứu khoa học. 80% giảng đường được đầu tư hệ thống điều hòa công suất lớn với máy chiếu hiện đại, đảm bảo sức khỏe cho sinh viên yên tâm học tập. Hệ thống phòng thí nghiệm đồng bộ với trang thiết bị máy móc hiện đại.</p>

<ul>
	<li style="text-align: justify;"><strong>Khuôn viên Trường&nbsp;</strong>có tổng diện tích<strong>&nbsp;26 ha</strong>&nbsp;(lớn nhất trong các trường đại học khu vực nội thành Hà Nội)</li>
</ul>

<p style="text-align: center;"><img src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-c1.jpg?alt=media&amp;token=cea814e2-d30a-4093-9375-1b669acd299f" style="width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-cau-vong.jpg?alt=media&amp;token=16ba04b0-ad96-4422-9b85-95f30a1f404e" style="height: 400px; width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fbkhn-chieu-ta.jpg?alt=media&amp;token=adf50585-67b3-4c4e-8c70-1842bcc2033c" style="width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fquangtruong-c1.jpg?alt=media&amp;token=6f30bb9c-f4b3-424b-9080-29686b9947fa" style="width: 600px;"></p>

<p style="text-align: justify;">Môi trường học tập và khuôn viên Trường trong lành<strong>&nbsp;(Trường có diện tích lớn nhất trong nội thành Hà Nội)</strong>, góp phần xây dựng đời sống sinh viên thân thiện và cởi mở. Trường có khu ký túc xá khang trang, sạch sẽ với các sân bóng đá, bóng chuyền, bóng rổ… phục vụ tốt đời sống sinh viên nội trú. Bên cạnh đó, Trường ĐHBK Hà Nội còn là Trường đại học được đầu tư đồng bộ cơ sở vật chất phục vụ các hoạt động thể thao – văn hóa trong và ngoài Trường như: sân vận động tiêu chuẩn quốc tế, bể bơi, sân tennis, nhà thi đấu thường xuyên tổ chức những hoạt động lớn quy mô thành phố, quốc gia.</p>

<p style="text-align: justify;"><strong>Cơ sở vật chất</strong></p>

<p style="text-align: justify;">Sinh viên được trải nghiệm trong môi trường thân thiện, hệ thống cơ sở vật chất hiện đại, đáp ứng nhu cầu học tập, nghiên cứu, tham gia các hoạt động thể thao, giải trí đa dạng.</p>

<p id="yui_patched_v3_11_0_1_1554864162750_1024" style="text-align: justify;"><strong>I. PHÒNG HỌC - GIẢNG ĐƯỜNG</strong></p>

<p id="yui_patched_v3_11_0_1_1554864162750_1037" style="text-align: justify;">Trường Đại học Bách Khoa Hà Nội có tổng diện tích phục vụ giảng dạy, nghiên cứu khoa học và hội họp rộng 26,2 hecta. Trường có&nbsp;<strong>hơn 200 giảng đường, phòng học, hội trường lớn và hệ thống phòng hội thảo; gần 200 phòng thí nghiệm, trong đó có 12 phòng thí nghiệm trọng điểm quốc gia và khoảng 20 xưởng thực tập, thực hành.</strong></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/dtvt-dhbkhn.jpg/bbcd8f06-33a4-4929-b8a0-ff4e179de90e?t=1553134531951"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/1b0dh-bach-khoa-ha-noi.jpg" style="width: 600px; height: 419px;"></p>

<p style="text-align: center;">Sinh viên khoa Điện tử viễn thông - ĐHBKHN trong giờ thực hành</p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fnha-d8.jpg?alt=media&amp;token=8941259f-7914-4fa9-ad0f-b8e5a5662e98" style="height: 450px; width: 600px;"></p>

<p style="text-align: center;">Một lớp học nhà D8</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/300px-NhaD9BK.jpg/6861820b-6e1a-45f7-b72f-d2390e56aeea?t=1553134280809"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/1280px-BKA_NHD.jpg" style="width: 600px; height: 450px;"></p>

<p style="text-align: center;">Nhà D9 Bách Khoa</p>

<ul>
	<li style="text-align: justify;"><strong>Hệ thống 400 phòng học và phòng thí nghiệm</strong>, trong đó có 12 phòng thí nghiệm trọng điểm và đầu tư tập trung, phục vụ hiệu quả công tác đào tạo và nghiên cứu.</li>
</ul>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/b1-toanha.jpg/f5bd5a60-63bd-4e80-a8d6-54b55db5027e?t=1553223438082"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/IMG_7410.jpg" style="width: 600px; height: 400px;"></p>

<p style="text-align: justify;">Trong đó có 8 phòng thí nghiệm trọng điểm quốc gia và tương đương; khoảng 20 xưởng thực tập và thực hành.</p>

<ul>
	<li style="text-align: justify;"><strong>Toàn bộ giảng đường</strong>&nbsp;được trang bị đầy đủ điều hòa và thiết bị giảng dạy cùng hệ thống wifi miễn phí trong khuôn viên Trường.</li>
</ul>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fgiang-duong-dhbkhn.jpg?alt=media&amp;token=76b3d762-8cd3-4623-896f-0fb52a48155c" style="height: 400px; width: 600px;"></p>

<p style="text-align: justify;"><strong>II. CÁC TOÀ NHÀ - THƯ VIỆN</strong></p>

<p style="text-align: justify;">Toàn bộ giảng đường được trang bị đầy đủ điều hòa và thiết bị giảng dạy cùng với hệ thống wifi miễn phí trong khuôn viên Trường.&nbsp;<strong>Thư viện điện tử Tạ Quang Bửu&nbsp;</strong>với&nbsp;<strong>diện tích 37.000 m2</strong>, có thể&nbsp;<strong>phục vụ đồng thời 2.000 sinh viên với 600.000 cuốn sách, 130.000 đầu sách điện tử</strong>. Sinh viên được&nbsp;<strong>truy cập miễn phí CSDL từ các nguồn như Science Driect, Scopus…</strong></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/71832176_701500016998753_4214244798715920384_o.jpg" style="width: 600px; height: 468px;"></p>

<p style="text-align: justify;">Thư viện Tạ Quang Bửu là&nbsp;thư viện lớn và hiện đại, thư viện có hội trường lớn (ở Tầng 10)&nbsp;với sức chứa hàng nghìn người</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/tqb.jpg" style="width: 600px; height: 400px;"></p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/diem-danh-10-truong-dai-hoc-co-thu-vien-dep-nhat-viet-nam-a.jpg" style="width: 600px; height: 485px;"></p>

<p style="text-align: justify;">Tổng diện tích đất sử dụng của Trường:&nbsp;<strong>252.857,8 m², nơi làm việc 15.252m², nơi học 78.846m², nơi vui chơi giải trí: 29.321 m²</strong>,<strong>&nbsp;1 nhà câu lạc bộ sinh viên với 350 chỗ được trang bị âm thanh hiện đại và 1 trung tâm Y tế</strong>&nbsp;hoạt động theo mô hình phòng khám đa khoa chăm sóc sức khỏe thường xuyên cho các cán bộ và sinh viên Trường.</p>

<p style="text-align: justify;"><strong>III. KHU KÝ TÚC XÁ</strong></p>

<p style="text-align: justify;">Trường có một&nbsp;<strong>khu ký túc xá với 420 phòng, đủ khả năng đáp ứng chỗ ở cho khoảng 4500 sinh viên.</strong></p>

<ul>
	<li style="text-align: justify;"><strong>Trung tâm Ký túc xá&nbsp;</strong>khang trang đáp ứng nhu cầu lưu trú của gần&nbsp;<strong>4.500</strong>&nbsp;sinh viên.</li>
</ul>

<p id="yui_patched_v3_11_0_1_1554106762583_1040" style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fktx-bach-khoa-1.jpg?alt=media&amp;token=d3826b5b-acc3-4870-8348-5c122699a11e" style="height: 288px; width: 600px;"></p>

<p style="text-align: center;">Hình ảnh khu ký túc xá sinh viên&nbsp;kỹ thuật tại Bách Khoa. Sinh viên được sử dụng Wifi FREE đến tận giường</p>

<p style="text-align: center;"><strong><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/ktx-b5.jpg/8285fd18-afbe-49f7-9e23-6710ad39ce24?t=1553222250000"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3349_5.jpg" style="width: 600px; height: 451px;"></strong></p>

<p style="text-align: center;">Khu Ký túc xá nhà B5</p>

<p style="text-align: justify;"><strong>IV. CƠ SỞ VẬT CHẤT&nbsp;- RÈN LUYỆN THỂ DỤC THỂ THAO</strong></p>

<p style="text-align: justify;">Các hệ thống cơ sở vật chất phục vụ bộ môn giáo dục thể chất và phong trào thể thao của sinh viên đầy đủ và hiện đại với&nbsp;<strong>1 sân bóng tiêu chuẩn quốc gia, 1 nhà thi đấu đa năng tiêu chuẩn&nbsp;</strong><strong>Đông Nam Á</strong><strong>,&nbsp;</strong><strong>1 bể bơi tiêu chuẩn quốc gia, sân tennis tiêu chuẩn quốc gia...&nbsp;</strong><strong>Khu liên hợp thể thao&nbsp;</strong>có diện tích<strong>&nbsp;20.000m2&nbsp;</strong>với hệ thống cơ sở vật chất hiện đại, bao gồm: sân bóng, bể bơi, sân tennis tiêu chuẩn quốc gia và nhà thi đấu đa năng tiêu chuẩn Đông Nam Á.</p>

<p style="text-align: justify;"><strong>1. Sân vận động</strong>&nbsp;diện tích 18.000m2&nbsp;bao gồm khán đài A - B với sức chứa 7.000 người, trong sân có sân bóng đá, 3 sân bóng chuyền, 1 sân bóng rổ, 1 khu tập thể dục và khu tập điền kinh (chạy 100m, 1500m, nhảy cao, nhảy xa, đẩy tạ, phóng lao…). Có dàn đèn phục vụ tập luyện buổi tối và nhiều phòng phụ trợ dưới khán đài A - B.</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/sanss.jpg/6fbfcb17-95fe-4ddb-8a92-f67ebedda1a7?t=1553225553660"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sanss.jpg" style="width: 600px; height: 255px;"></p>

<p style="text-align: justify;">Đại học Bách khoa có sân bóng tiêu chuẩn quốc gia, một nhà thi đấu đa năng tiêu chuẩn Đông Nam Á</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sbk.jpg" style="width: 600px; height: 449px;"></p>

<p style="text-align: justify;"><strong>2. Khu bể bơi, sân quần vợt :</strong>&nbsp;diện tích 4.800m2</p>

<p style="text-align: justify;">- Bể bơi kích thước 25x50m, có lọc nước tuần hoàn, có khán đài sức chứa 500 người.</p>

<p style="text-align: justify;">- Sân quần vợt: 1 sân</p>

<p style="text-align: center;">&nbsp;<img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fsan-the-thao-LG-Hausys-03.jpg?alt=media&amp;token=09af3863-7b49-48e8-91aa-3459e30f60f8" style="height: 450px; width: 600px;"></p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2Fnha-thi-dau-bk2.jpg?alt=media&amp;token=dd23dc39-246d-42e7-aa2d-293bbda6c5fa" style="height: 377px; width: 600px;"></p>

<p style="text-align: justify;"><strong>3. Nhà tập luyện và thi đấu:</strong>&nbsp;diện tích 4.800m2</p>

<p style="text-align: justify;">Nhà tập đa năng có khán đài A - B sức chứa 1258 chỗ ngồi, và được trang bị rất hiện đại, hệ thống thông tin, điều hòa trung tâm và nhiều phòng phụ trợ, văn phòng – phục vụ cho các giải thể thao sinh viên cũng như quốc tế.</p>

<p style="text-align: center;"><img alt="File preview" src="https://firebasestorage.googleapis.com/v0/b/tsdhbk-632bb.appspot.com/o/Anh%20Hust%2FTrung-tam-the-thao-BK_01.jpg?alt=media&amp;token=4fa673ed-1e48-4a32-9076-e1531a54c5fe" style="height: 381px; width: 600px;">&nbsp;</p>

<p style="text-align: justify;"><strong>4. Khu tập luyện ký túc xá:</strong>&nbsp;diện tích 4.000m2</p>

<p style="text-align: justify;">Bao gồm: khu sân bóng rổ, 1 khu tập thể dục dụng cụ và 2 sân bóng đá 7 người.&nbsp;</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3337_2.jpg" style="width: 600px; height: 399px;"></p>

<p style="text-align: justify;">Sân bóng đá&nbsp;nằm ngay sau lưng của tòa nhà B9</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/san-bong-bk2.jpg/9d3d338c-b98f-48d3-b59e-c0cd01bef9b3?t=1553222706842"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/3332_1.jpg" style="width: 600px; height: 398px;"></p>

<p style="text-align: justify;">Sân bóng với mặt cỏ nhân tạo hiện đại - không gian tập thể thao lý tưởng cho sinh viên</p>

<p style="text-align: center;"><img alt="" src="https://ts.hust.edu.vn/documents/100477/0/sanbongchuyen.jpg/0a57ed24-4e66-4e4e-83ef-8a4e8b0d78d6?t=1553222743906"><img alt="" src="https://ts.hust.edu.vn/public/admin/uploads/files/sbk2.jpg" style="width: 600px; height: 398px;"></p>

<p style="text-align: justify;">Sân tập bóng chuyền cho sinh viên</p>

<ul>
	<li style="text-align: justify;"><strong>Trung tâm Y tế</strong>&nbsp;hoạt động theo mô hình phòng khám đa khoa chăm sóc sức khỏe thường xuyên cho các cán bộ và sinh viên Trường.</li>
</ul>

<p style="text-align: center;"><img alt="" src="/public/admin/uploads/files/Quy%20doi/ttyte2.jpg" style="width: 600px; height: 450px;"></p>

<p style="text-align: center;">Địa chỉ của trung tâm đặt tại Số 5 Tạ Quang Bửu, Q.Hai Bà Trưng, Hà Nội</p>

<p style="text-align: right;">TS.HUST.EDU.VN</p>
                        </div>
                        <div class="social-share clearfix">
                            <ul class="comment-like clearfix">
                                <li class="ic-like">
                                                                                                                         <a href="https://ts.hust.edu.vn/tai-khoan/like" class="like-post" data-log="1" data-token="TzZS3QRVi0TmDQIyhmbyzVZNx5lDNI46aPN6O36b"><i class="far fa-heart" data-value="354"></i></a>
                                                                                                                <span>Lưu tin</span>
                                </li>
                                <li class="ic-comment">
                                    <a href="#" class="comment" data-toggle="modal" data-target="#notify-op"><i class="fas fa-comment-alt"></i></a>
                                    <span>Bình luận</span>
                                </li>
                            </ul>
                            <ul class="social-icons">
                                <li><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;title=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc" class="facebook" target="_blank"><i class="fab fa-facebook-f"></i></a></li><li><a href="https://mail.google.com/mail/?su=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc&amp;body=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%0Ahttps%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;view=cm&amp;fs=1&amp;to&amp;ui=2&amp;tf=1" class="gmail" target="_blank"><i class="fab fa-google"></i></a></li><li><a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fts.hust.edu.vn%2Ftin-tuc%2Fco-so-vat-chat-thuoc-loai-tot-nhat-trong-cac-truong-dai-hoc&amp;text=C%C6%A1%20s%E1%BB%9F%20v%E1%BA%ADt%20ch%E1%BA%A5t%20thu%E1%BB%99c%20lo%E1%BA%A1i%20t%E1%BB%91t%20nh%E1%BA%A5t%20trong%20c%C3%A1c%20tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li class="txt">Chia sẻ</li>
                            </ul>
                        </div>
                        
                    </div>''',
      },
      // {
      //   'new_id': 4,
      //   'archive':
      //       'Cơ sở vật chất thuộc loại tốt nhất trong các trường đại học',
      //   'img_url': 'https://ts.hust.edu.vn/image/3grn-img005.png/64/64',
      // },
    ],
    "group_category": [
      {
        "name": "TIN TUYỂN SINH ĐẠI HỌC",
        "img_url":
            "https://ts.hust.edu.vn/image/ju90-68693884-2427916627295293-6293734097898438656-o.jpg/500/360",
      },
      {
        "name": "TIN TUYỂN SINH THẠC SĨ",
        "img_url":
            "https://ts.hust.edu.vn/image/rqp8-4122-thuhien9.jpg/500/360",
      },
      {
        "name": "TIN TUYỂN SINH NCS",
        "img_url": "https://ts.hust.edu.vn/image/2wfc-nu-vien-dien.jpg/500/360",
      },
      {
        "name": "NGÀNH ĐÀO TẠO ĐẠI HỌC",
        "img_url": "https://ts.hust.edu.vn/image/nhaq-mu-01.jpg/500/360",
      },
      {
        "name": "NGÀNH ĐÀO TẠO THẠC SĨ",
        "img_url": "https://ts.hust.edu.vn/image/n6b6-mu-2-01.jpg/500/360",
      },
      {
        "name": "NGÀNH ĐÀO TẠO TIẾN SĨ",
        "img_url": "https://ts.hust.edu.vn/image/k8gj-mu-3-01.jpg/500/360",
      },
    ],
  }
};

var menus = [
  TreeMenuItem(
    id: 0,
    name: 'Tuyển sinh đại học',
    children: [
      TreeMenuItem(
        id: 0.1,
        name: 'Đăng ký quy đổi chứng chỉ ngoại ngữ',
      ),
      TreeMenuItem(
        id: 0.2,
        name: 'Xét tuyển tài năng 2023',
      ),
      TreeMenuItem(
        id: 0.3,
        name: 'Kỳ thi đánh giá tư duy 2023',
      ),
      TreeMenuItem(
        id: 0.4,
        name: 'Thông tin tuyển sinh 2023',
        children: [
          TreeMenuItem(
            id: 0.41,
            name: 'Phương thức tuyển sinh',
          ),
          TreeMenuItem(
            id: 0.42,
            name: 'Chỉ tiêu và mã xét tuyển',
          ),
          TreeMenuItem(
            id: 0.43,
            name: 'Xét tuyển tài năng',
          ),
        ],
      ),
      TreeMenuItem(
        id: 0.5,
        name: 'Chương trình đào tạo đại học',
      ),
      TreeMenuItem(
        id: 0.6,
        name: 'Điểm chuẩn các năm',
      ),
      TreeMenuItem(
        id: 0.7,
        name: 'Danh sách các trường sử dụng KQĐGTD',
      ),
    ],
  ),
  TreeMenuItem(
    id: 1,
    name: 'Tuyển sinh Sau đại học',
    children: [
      TreeMenuItem(
        id: 1.1,
        name: 'Tuyển sinh thạc sĩ',
        children: [
          TreeMenuItem(
            id: 1.11,
            name: 'Đăng ký thạc sĩ online',
          ),
          TreeMenuItem(
            id: 1.12,
            name: 'Thông tin tuyển sinh chung',
          ),
          TreeMenuItem(
            id: 1.13,
            name: 'Các ngành đào tạo thạc sĩ',
          ),
        ],
      ),
      TreeMenuItem(
        id: 1.2,
        name: 'Tuyển sinh nghiên cứu sinh',
        children: [
          TreeMenuItem(
            id: 1.21,
            name: 'Thông tin tuyển sinh chung',
          ),
          TreeMenuItem(
            id: 1.22,
            name: 'Các ngành đào tạo thạc sĩ',
          ),
        ],
      ),
    ],
  ),
];

var allNews = [
  {
    "id": 10,
    "title": "Dự báo điểm chuẩn Đại học Bách khoa Hà Nội có nhiều thay đổi",
    "subtitle":
        "Ngoại trừ một số ngành “hot”, đa số điểm chuẩn theo phương thức kết quả thi tốt nghiệp THPT vào các ngành của Đại học Bách khoa Hà Nội sẽ có xu hướng giảm.",
    "img_url":
        'https://ts.hust.edu.vn/image/lfq0-20230319-dsc-4538.jpg/250/180',
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Dự báo điểm chuẩn Đại học Bách khoa Hà Nội có nhiều thay đổi</h1>
                            <p class="date-created">Thursday, 13/07/2023, 14:17</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Ngoại trừ một số ngành “hot”, đa số điểm chuẩn theo phương thức kết quả thi tốt nghiệp THPT vào các ngành của Đại học Bách khoa Hà Nội sẽ có xu hướng giảm.</div>
                                                        <p style="text-align: center;"><img alt="" src="/public/admin/uploads/files/TS%202023/screen-shot-2023-07-12-at-20_01_27.png" style="width: 680px; height: 453px;"></p>

<p>Theo TS. Lê Đình Nam, Phó Trưởng phòng Tuyển sinh, Đại học Bách khoa Hà Nội, điểm chuẩn các ngành trên toàn quốc có thể tăng nhẹ nhưng điểm chuẩn các chương trình đào tạo của Đại học Bách khoa Hà Nội có thể giảm.</p>

<p style="text-align: center;"><img alt="" src="/public/admin/uploads/files/TS%202023/20230319-dsc_4538.jpg" style="width: 680px; height: 453px;"></p>

<p style="text-align: center;">TS. Lê Đình Nam tư vấn cho học sinh và phụ huynh học sinh tại Ngày hội tư vấn Tuyển sinh và hướng nghiệp 3/2023</p>

<p style="text-align: justify;">Với một số ngành "hot" được nhiều thí sinh quan tâm có mức độ cạnh tranh cao như nhóm ngành Công nghệ thông tin, điểm chuẩn năm nay có khả năng tăng nhẹ, đặc biệt là khi có một số mã xét tuyển Công nghệ thông tin năm ngoái không lấy kết quả điểm thi THPT.<br>
<br>
Nhóm ngành tự động hóa, cơ điện tử và toán tin sẽ có điểm chuẩn có thể giữ nguyên hoặc không thay đổi đáng kể.<br>
&nbsp;<br>
Đa phần các chương trình còn lại dự báo điểm chuẩn có thể giảm.<br>
&nbsp;<br>
Đưa ra lý giải về dự báo này, TS. Lê Đình Nam cho biết xuất phát từ các số liệu thống kê, số lượng thí sinh lựa chọn học đại học đang giảm, chỉ khoảng 50% thí sinh nhập học đại học. Theo số liệu từ Bộ Giáo dục và Đào tạo, số lượng thí sinh tốt nghiệp THPT đăng ký xét tuyển đại học giảm gần 20% so với năm 2021 và giảm 3,4% so với năm 2020.&nbsp;<br>
<br>
Trong khi đó, số lượng người thi lựa chọn khối Khoa học tự nhiên, nguồn tuyển sinh cho các trường tập trung tuyển nhiều theo các khối A00,A01,B00,D07 như Bách khoa Hà Nội, giảm so với các năm trước, chỉ chiếm khoảng 31,52% trong số các bạn tham gia thi TNTHPT.<br>
<br>
Cùng với các phương thức xét tuyển đa dạng hiện nay, nhiều thí sinh có năng lực tốt đã trúng tuyển theo các phương thức xét tuyển sớm.<br>
&nbsp;<br>
Khác với năm 2022, năm nay, tất cả các ngành đào tạo của Bách khoa Hà Nội đều sử dụng kết quả thi tốt nghiệp THPT để xét tuyển. Chỉ tiêu xét tuyển vào Đại học Bách khoa Hà Nội theo điểm thi (bao gồm điểm thi THPT và Đánh giá tư duy) tăng so với năm ngoái, chiếm 85-90%. Đây cũng là một trong các cơ sở đánh giá điểm chuẩn vào Bách khoa Hà Nội sẽ giảm so với các năm.<br>
&nbsp;<br>
Phó Trưởng phòng Tuyển sinh Đại học Bách khoa Hà Nội cũng đưa lời khuyên cho các thí sinh năm nay trong việc lựa chọn ngành, nghề phù hợp: Các thí sinh nên tìm hiểu kỹ các ngành học dựa theo sở thích, năng lực và điều kiện của gia đình, không chạy theo số đông.<br>
<br>
Các ngành học ở Bách khoa Hà Nội hiện nay đều ghi nhận tỉ lệ có việc làm sau tốt nghiệp rất cao với mức lương tốt. Nhiều cựu sinh viên sau khi ra trường đã gặt hái được thành công trong các lĩnh vực họ từng theo học, kể cả ở những lĩnh vực ít “hot” hơn. “Việc lựa chọn ngành học dựa theo lợi thế cá nhân là bàn đạp vững chắc để người học có thể tỏa sáng trên con đường sự nghiệp”, TS. Lê Đình Nam cho biết.<br>
<br>
Bên cạnh đó, với xu hướng liên ngành - đa ngành trong giáo dục đại học, các ngành học khối kỹ thuật có tính liên kết và tương đồng. Ví dụ, các thí sinh quan tâm đến ngành điện tử có thể tìm hiểu thêm về một số ngành liên quan như vật liệu, vật lý kỹ thuật,… để tăng khả năng đỗ của mình vào lĩnh vực yêu thích.<br>
<br>
Ông cũng cho rằng các thí sinh với điểm không cao nên đặt nhiều nguyện vọng bởi “nếu không đăng ký nguyện vọng, khả năng đỗ bằng 0; nếu đăng ký, cơ hội dù ít những vẫn còn”. Ông khẳng định các dự báo điểm chuẩn chỉ mang tính chất tham khảo, các thí sinh dưới mức dự báo vẫn nên mạnh dạn đăng ký ngành học yêu thích vì thứ tự nguyện vọng không ảnh hưởng đến kết quả đỗ vào các nguyện vọng bên dưới.<br>
&nbsp;<br>
Trước đó, Đại học Bách khoa Hà Nội vừa thông tin dự báo điểm chuẩn xét tuyển theo phương thức kết quả kỳ thi&nbsp;<a href="https://www.hust.edu.vn/vi/news/tuyen-sinh-dao-tao-cong-tac-sinh-vien/du-bao-diem-chuan-xet-tuyen-theo-ket-qua-diem-thi-danh-gia-tu-duy-nam-2023-654798.html"><u><strong>đánh giá tư duy</strong></u></a>&nbsp;năm nay dựa trên phổ điểm và xu hướng lựa chọn ngành học của thí sinh. Điểm chuẩn dự báo trên thang 100 điểm bao gồm điểm thi Đánh giá tư duy, điểm ưu tiên (điểm khu vực, đối tượng) và điểm thưởng chứng chỉ ngoại ngữ. Ngưỡng đảm bảo chất lượng, hay mức điểm xét tuyển tối thiểu đối với phương thức xét bằng điểm thi đánh giá tư duy của Đại học Bách khoa Hà Nội dự kiến là 50 điểm.</p>

<p style="text-align: right;"><em><strong>Nguồn: Hust.edu.vn</strong></em></p>
                        </div>
                    </div>
'''
  },
  {
    "id": 17,
    "title":
        "Mã SAT, ACT dành cho những em trúng tuyển thẳng theo phương thức Xét tuyển tài năng",
    "subtitle":
        "Hệ thống Xét tuyển tài năng Đại học Bách Khoa Hà Nội đã tiếp nhận hồ sơ đăng ký online theo diện xét tuyển bằng chứng chỉ Quốc tế (SAT, ACT,...) và thông báo cho các em đã đạt đủ điều kiện tuyển thẳng theo quy chế tuyển sinh năm 2023.Phòng Tuyển sinh đề nghị thí sinh gửi mã code theo từng loại chứng chỉ dưới đây và hoàn thành những thủ tục đăng ký cho đơn vị tổ chức thi để gửi bản gốc chứng chỉ về Đại học Bách Khoa Hà Nội.",
    "img_url":
        'https://ts.hust.edu.vn/image/5ort-21122684-929587730512584-7226558315078044442-o.jpg/250/180',
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Mã SAT, ACT dành cho những em trúng tuyển thẳng theo phương thức Xét tuyển tài năng</h1>
                            <p class="date-created">Thursday, 06/07/2023, 03:28</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Hệ thống Xét tuyển tài năng Đại học Bách Khoa Hà Nội đã tiếp nhận hồ sơ đăng ký online theo diện xét tuyển bằng chứng chỉ Quốc tế (SAT, ACT,...) và thông báo cho các em đã đạt đủ điều kiện tuyển thẳng theo quy chế tuyển sinh năm 2023.Phòng Tuyển sinh đề nghị thí sinh gửi mã code theo từng loại chứng chỉ dưới đây và hoàn thành những thủ tục đăng ký cho đơn vị tổ chức thi để gửi bản gốc chứng chỉ về Đại học Bách Khoa Hà Nội.</div>
                                                        <p style="margin-top:6.0pt; margin-right:0cm; margin-bottom:6.0pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 0.0001pt"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="line-height:115%"><b><span style="line-height:115%">Với những bạn trúng tuyển thẳng bằng điểm SAT: </span></b></span></span></span></p>

<p style="margin-top:6.0pt; margin-right:0cm; margin-bottom:6.0pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 0.0001pt"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="line-height:115%"><span style="line-height:115%">Em truy cập vào website <span class="MsoHyperlink" style="color:blue"><span style="text-decoration:underline"><a href="http://www.collegeboard.org" style="color:blue; text-decoration:underline">www.collegeboard.org</a></span></span> và nhập mã Code của trường ĐH Bách Khoa Hà Nội (HUST) (<b> 7740</b> ) để xác nhận gửi điểm.</span></span></span></span></p>

<p style="margin:0cm 0cm 0.0001pt; text-align:center"><span style="font-size:14px"><img alt="" src="/public/admin/uploads/files/dang-ky-ts-2020/sat_7740.png" style="width:452px; height:78px"></span></p>

<p align="center" style="margin-top:6.0pt; margin-right:0cm; margin-bottom:6.0pt; margin-left:0cm; text-align:center; margin:0cm 0cm 0.0001pt">&nbsp;</p>

<p style="margin-top:6.0pt; margin-right:0cm; margin-bottom:6.0pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 0.0001pt"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:115%"><b><span style="line-height:115%">Với những bạn trúng tuyển thẳng bằng điểm ACT: </span></b></span></span></span></p>

<p style="margin-top:6.0pt; margin-right:0cm; margin-bottom:6.0pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 0.0001pt"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:115%"><span style="line-height:115%">Em truy cập vào website <span class="MsoHyperlink" style="color:blue"><span style="text-decoration:underline"><a href="http://www.act.org/" style="color:blue; text-decoration:underline">http://www.act.org/</a></span></span> và nhập mã Code của trường ĐH Bách Khoa Hà Nội (HUST) (<b> 7851</b> ) để xác nhận gửi điểm.</span></span></span></span></p>

<p style="margin:0cm 0cm 0.0001pt; text-align:center"><span style="font-size:14px"><img alt="" src="/public/admin/uploads/files/dang-ky-ts-2020/act_7851.png" style="width:384px; height:85px"></span></p>
                        </div>
                    </div>'''
  },
  {
    "id": 11,
    "title": "Ngưỡng yêu cầu đối với phương thức Xét tuyển tài năng năm 2023",
    "subtitle":
        "Hội đồng tuyển sinh Đại học Bách khoa Hà Nội trân trọng thông báo ngưỡng yêu cầu đối với các thí sinh đăng ký xét tuyển vào các ngành/chương trình đào tạo đại học chính quy năm 2023 theo phương thức Xét tuyển tài năng.",
    "img_url": 'https://ts.hust.edu.vn/image/m2zo-cthuc.jpg/250/180',
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Ngưỡng yêu cầu đối với phương thức Xét tuyển tài năng năm 2023</h1>
                            <p class="date-created">Wednesday, 14/06/2023, 08:17</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Hội đồng tuyển sinh Đại học Bách khoa Hà Nội trân trọng thông báo ngưỡng yêu cầu  đối với các thí sinh đăng ký xét tuyển vào các ngành/chương trình đào tạo đại học chính quy năm 2023 theo phương thức Xét tuyển tài năng.</div>
                                                        <p><strong>Lưu ý:</strong><br>
1. Kết quả XTTN của từng thí sinh sẽ có ở mục tra cứu trong tài khoản trên&nbsp;<a href="https://xttn.hust.edu.vn/" rel="noopener noreferrer nofollow" target="_blank">https://xttn.hust.edu.vn</a><br>
<br>
2. Đối với thí sinh diện 1.2 và 1.3:<br>
<br>
- Thí sinh sẽ được chính thức trúng tuyển khi đáp ứng yêu cầu đỗ Tốt nghiệp và<br>
<br>
- Đã đăng ký nguyện vọng tại cổng đăng ký tuyển sinh của Bộ GD&amp;ĐT (thí sinh phải tự xác định thứ tự ưu tiên các nguyện vọng khi đăng ký trên Hệ thống chung của Bộ GD-ĐT, tùy thuộc thí sinh muốn được công nhận trúng tuyển nguyện vọng này hay muốn mở rộng cơ hội trúng tuyển nguyện vọng khác.).<br>
<br>
- Sau quá trình lọc ảo chung toàn quốc (và được công bố trúng tuyển), thí sinh xác nhận nhập học và nhập học theo hướng dẫn của Đại học.<br>
<br>
- Nếu thí sinh đăng ký&nbsp;<strong>nguyện vọng 1 (NV1)</strong>&nbsp;trên cổng đăng ký tuyển sinh của Bộ GD&amp;ĐT, thí sinh sẽ&nbsp;<strong>CHẮC CHẮN TRÚNG TUYỂN</strong>&nbsp;bằng phương thức này.<br>
<br>
-&nbsp;Thí sinh đăng ký chương trình giảng dạy bằng tiếng Anh,ngoài các điều kiện trên, cần có một trong những điều kiện về trình độ tiếng Anh như sau: Chứng chỉ tiếng Anh VSTEP trình độ B1 trở lên, IELTS (academic) 5.0 trở lên hoặc tương đương; hoặc Điểm thi tốt nghiệp THPT năm 2023 môn tiếng Anh đạt yêu cầu của ĐHBK Hà Nội (sẽ được công bố sau).<br>
&nbsp;</p>

<p style="text-align: center;"><img alt="Screen Shot 2023 06 08 at 17 21 40" src="https://www.hust.edu.vn/uploads/sys/news/2023_06/screen-shot-2023-06-08-at-17.21.40.png" style="width: 800px; height: 801px; border-width: 1px; border-style: solid;"></p>

<p>&nbsp;</p>

<p style="text-align: center;"><img alt="Screen Shot 2023 06 08 at 17 21 50" src="https://www.hust.edu.vn/uploads/sys/news/2023_06/screen-shot-2023-06-08-at-17.21.50.png" style="width: 800px; height: 801px; border-width: 1px; border-style: solid;"></p>

<p>&nbsp;</p>

<p style="text-align: center;"><img alt="Screen Shot 2023 06 08 at 17 21 59" src="https://www.hust.edu.vn/uploads/sys/news/2023_06/screen-shot-2023-06-08-at-17.21.59.png" style="width: 800px; height: 800px; border-width: 1px; border-style: solid;"></p>

<p>&nbsp;</p>

<p style="text-align: center;"><img alt="Screen Shot 2023 06 08 at 21 37 13" src="https://www.hust.edu.vn/uploads/sys/news/2023_06/screen-shot-2023-06-08-at-21.37.13.png" style="width: 800px; height: 800px; border-width: 1px; border-style: solid;"></p>

<p style="text-align: center;">&nbsp;</p>

<p style="text-align: center;"><img alt="Screen Shot 2023 06 08 at 17 22 16" src="https://www.hust.edu.vn/uploads/sys/news/2023_06/screen-shot-2023-06-08-at-17.22.16.png" style="width: 800px; height: 800px; border-width: 1px; border-style: solid;"></p>
                        </div>
                    </div>''',
  },
  {
    "id": 16,
    "title": "Thông báo kết quả Xét tuyển tài năng năm 2023",
    "img_url": 'https://ts.hust.edu.vn/image/sr8s-dien1.jpg/250/180',
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Thông báo kết quả Xét tuyển tài năng năm 2023</h1>
                            <p class="date-created">Monday, 12/06/2023, 08:32</p>
                        </div>
                        <div class="description">
                                                        <p style="text-align: center;"><span style="font-family:Verdana,Geneva,sans-serif;"><img alt="" src="/public/admin/uploads/files/TS%202023/dien1.jpg" style="width: 680px; height: 419px;"></span></p>

<p style="text-align: justify;"><span style="font-family:Verdana,Geneva,sans-serif;"><span style="font-size:16px;">Hiện Nhà trường đã gửi kết quả xét tuyển tài năng năm 2023 (Đợt 1 đối với Diện 1.1) về tài khoản của thí sinh đã đăng ký trên Hệ thống (<strong><a href="https://xttn.hust.edu.vn/?fbclid=IwAR1P0f3SfVMTShBG-dDdWTDUkhLHk3DNCphE8bsrLfgNsBpk7WPwTAVEEJ8" rel="nofollow noreferrer" role="link" tabindex="-1" target="_blank">https://xttn.hust.edu.vn</a></strong>). </span></span></p>

<p style="text-align: justify;"><span style="font-family:Verdana,Geneva,sans-serif;"><span style="font-size:16px;">Thí sinh thực hiện <a href="https://xttn.hust.edu.vn" target="_blank"><strong>đăng nhập vào Hệ thống</strong></a> để biết kết quả (<strong>mục TRA CỨU</strong>). </span></span></p>

<p style="text-align: justify;"><span style="font-family:Verdana,Geneva,sans-serif;"><span style="font-size:16px;">Thí sinh có thắc mắc gì về kết quả xét tuyển, liên hệ với Phòng Tuyển sinh để được xử lý. Thời hạn tiếp nhận thắc mắc và phúc khảo kết quả xét tuyển từ ngày 12-16/6/2023 (Hình thức phúc khảo: Gửi email tới <strong>tuyensinh@hust.edu.vn</strong>)</span></span></p>

<p style="text-align: justify;"><span style="font-family:Verdana,Geneva,sans-serif;"><span style="font-size:16px;">Những thí sinh KHÔNG đạt ngưỡng yêu cầu cho cả 2 nguyện vọng đã đăng ký, nếu có nguyện vọng chuyển sang các chương trình có ngưỡng yêu cầu thấp hơn hoặc bằng và còn chỉ tiêu thì đến Phòng Tuyển sinh, Đại học Bách khoa&nbsp;để được hướng dẫn. Thời gian tiếp nhận chuyển nguyện vọng<strong> từ 9h00 ngày 12/6/2023 (Thứ 2) đến 17h00 ngày 16/6/2023 (Thứ 6).</strong></span></span></p>

<p style="text-align: justify;">&nbsp;</p>

                    </div>''',
  },
  {
    "id": 12,
    "title": "Các mốc thời gian tuyển sinh Thạc sỹ cần lưu ý năm 2023",
    "subtitle":
        "Ngày 21/03/2023, Đại học Bách Khoa Hà Nội đã đăng thông báo tuyển sinh trình độ Thạc sỹ năm 2023.Kèm theo đó là các thông tin điều kiện hồ sơ, lệ phí và kế hoạch dự kiến xét tuyển.Để nắm bắt các thông tin kế hoạch kịp thời, Phòng Tuyển sinh đã tóm tắt các mốc thời gian ứng viên cần lưu ý sau đây:",
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Các mốc thời gian tuyển sinh Thạc sỹ cần lưu ý năm 2023</h1>
                            <p class="date-created">Tuesday, 18/04/2023, 08:41</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Ngày 21/03/2023, Đại học Bách Khoa Hà Nội đã đăng thông báo tuyển sinh trình độ Thạc sỹ năm 2023.Kèm theo đó là các thông tin điều kiện hồ sơ, lệ phí và kế hoạch dự kiến xét tuyển.Để nắm bắt các thông tin kế hoạch kịp thời, Phòng Tuyển sinh đã tóm tắt các mốc thời gian ứng viên cần lưu ý sau đây:</div>
                                                        <ul>
	<li style="margin:6pt 0cm;"><span style="font-size:16px;"><strong>Từ ngày 1 đến 20 hàng tháng:</strong> Phòng Tuyển sinh thu và&nbsp;xét duyệt hồ sơ.</span></li>
	<li style="margin: 6pt 0cm;"><span style="font-size:16px;"><strong>Từ ngày 21 đến 25 hàng tháng:</strong> Chuyển&nbsp;hồ sơ về hội đồng&nbsp;các Trường/ Viện chuyên ngành để xét duyện và phỏng vấn.</span></li>
	<li style="margin:6pt 0cm;"><span style="font-size:16px;"><strong>Từ ngày 26 đến 30 hàng tháng:</strong> Phòng Tuyển sinh công bố quyết định trúng tuyển và giấy báo trúng tuyển cho ứng viên.</span></li>
	<li style="margin:6pt 0cm;"><span style="font-size:16px;"><strong>Từ ngày 1 đến 10 hàng tháng (sau khi công bố quyết định trúng tuyển):</strong> Phòng đào tạo tiến hành thủ tục nhập học và công nhận học viên.</span></li>
	<li style="margin:6pt 0cm;"><span style="font-size:16px;"><strong>Từ ngày 10 đến 20 hàng tháng chia làm 4 đợt (Tháng 1, 4, 7, 10):</strong> Học viên đăng ký các môn học theo lịch</span></li>
	<li style="margin:6pt 0cm;"><span style="font-size:16px;"><strong>Các đợt đầu tháng 1 và tháng 7:</strong> Phòng đào tạo quyết định công nhận học viên chính thức.</span></li>
</ul>

<p style="margin:6pt 0cm"><img alt="" src="/public/admin/uploads/images/C%C3%A1c%20m%E1%BB%91c%20th%E1%BB%9Di%20gian%20Th%E1%BA%A1c%20s%E1%BB%B9%202023.png" style="width: 889px; height: 500px;"></p>
                        </div>
                    </div>''',
  },
  {
    "id": 15,
    "title": "LỊCH KIỂM TRA TIẾNG ANH ĐẦU KHÓA",
    "subtitle": "LỊCH KIỂM TRA TIẾNG ANH ĐẦU KHÓA",
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Lịch kiểm tra tiếng Anh đầu khóa</h1>
                            <p class="date-created">Friday, 04/08/2023, 02:31</p>
                        </div>
                        <div class="description">
                                                        <p><strong>I. Giới thiệu</strong></p>

<p>Phân loại trình độ tiếng Anh đầu vào có ý nghĩa quan trọng trong việc xếp sinh viên vào các lớp học ngoại ngữ đúng trình độ để đảm bảo cho sinh viên học tốt và đáp ứng yêu cầu của môn học ngoại ngữ.</p>

<p>Việc phân loại trình độ được thực hiện thông qua bài thi tiếng Anh “TOEIC Placement” do Nhà trường tổ chức dành cho sinh viên K68.</p>

<p><em><strong>Sinh viên có thể lựa chọn:</strong></em></p>

<p>1. Đăng ký tham gia kỳ thi phân loại trình độ bằng cách nộp phí kiểm tra cùng với các khoản thu phí đầu khóa theo thông báo của phòng Công tác sinh viên.</p>

<p>Dựa trên kết quả thi phân loại, nhà trường xét miễn một hoặc một số môn học tiếng Anh trong chương trình đào tạo bắt buộc và được xếp vào các lớp học phù hợp với trình độ.</p>

<p>2. Sinh viên không đăng ký tham gia kỳ thi phân loại sẽ được xếp vào lớp học trình độ tiếng Anh ở mức thấp nhất.</p>

<p>3. Sinh viên đã có chứng chỉ tiếng Anh quốc tế còn hạn tính đến ngày 03/10/2023 không cần phân loại trình độ tiếng Anh và được miễn toàn bộ các môn học tiếng Anh bắt buộc trong chương trình đào tạo nếu đáp ứng yêu cầu dưới đây:</p>

<p>a) Đối với chương trình Chuẩn và Công nghệ thông tin (Việt Nhật): sinh viên có điểm IELTS 4.5 hoặc tương đương trở lên.</p>

<p>b) Đối với chương trình Tiên tiến hoặc Quốc tế với chuẩn đầu ra tiếng Anh: sinh viên có điểm IELTS 5.5 hoặc tương đương trở lên.</p>

<p>c) Đối với chương trình Tài năng và PFIEV: sinh viên có điểm IELTS 5.0 hoặc tương đương trở lên.</p>

<p><strong>II. Đối tượng cần tham gia kiểm tra:</strong></p>

<p>1. Sinh viên K68 thuộc chương trình đào tạo có chuẩn đầu ra là tiếng Anh.</p>

<p>2. Sinh viên thuộc các chương trình sau&nbsp;không phải&nbsp;tham gia kiểm tra tiếng Anh đầu khóa:</p>

<p>a) Công nghệ thông tin (Việt - Pháp): ngoại ngữ chính là tiếng Pháp.</p>

<p>b) Hệ thống nhúng thông minh và IoT (CT tiên tiến): ngoại ngữ chính là tiếng Nhật.</p>

<p>c) Cơ điện tử - hợp tác với ĐHCN Nagaoka (Nhật Bản): ngoại ngữ chính là tiếng Nhật.</p>

<p>d) Cơ điện tử - hợp tác với ĐH Leibniz Hannover (Đức): ngoại ngữ chính là tiếng Đức.</p>

<p>e) Điện tử - Viễn thông - hợp tác với ĐH Leibniz Hannover (Đức): ngoại ngữ chính là tiếng Đức.</p>

<p>f) Tiếng Anh chuyên nghiệp quốc tế và Tiếng Anh KHKT và Công nghệ: chuyên ngành ngoại ngữ.</p>

<p><strong>III. Dạng bài kiểm tra TOEIC placement:</strong>&nbsp;sinh viên sẽ thực hiện bài kiểm tra trong 2 giờ, gồm 200 câu hỏi chia thành 2 phần như sau: Chi tiết của các phần thi như sau:</p>

<p>1. Phần nghe hiểu: Đánh giá trình độ nghe hiểu ngôn ngữ nói tiếng Anh, bao gồm 100 câu hỏi với 4 phần được thực hiện qua audio trong thời gian 45 phút.</p>

<p>Thí sinh sẽ nghe các câu miêu tả, câu hỏi, hội thoại và đoạn thông tin bằng tiếng Anh, sau đó lựa chọn câu trả lời dựa trên những nội dung đã nghe.</p>

<p>2. Phần đọc hiểu: Đánh giá trình độ hiểu ngôn ngữ viết tiếng Anh, bao gồm 100 câu hỏi với 3 phần được thức hiện trong thời gian 75 phút. Thí sinh sẽ đọc các thông tin trong đề thi và lựa chọn câu trả lời dựa vào nội dung đã đọc.</p>

<p><strong>IV. Hình thức và thời gian tổ chức kiểm tra:</strong></p>

<p>1. Hình thức thi: sinh viên làm bài thi trên máy tính tại các Phòng máy tính của&nbsp; ĐHBK Hà Nội.</p>

<p>2. Thời gian tổ chức: dự kiến từ 26/8 – 30/8/2023.</p>

<p>3.&nbsp;<em>Phí kiểm tra: 350.000 đồng</em>&nbsp;– nộp cùng với các khoản thu phí đầu khóa theo thông báo của phòng Công tác sinh viên.</p>

<p>4. Hình thức đăng ký kiểm tra TOEIC placement: nộp phí kiểm tra cùng các khoản thu phí đầu khóa. Phòng Đào tạo sẽ lập danh sách sinh viên thi dựa vào khoản nộp 350.000 đồng của sinh viên.</p>

<p><strong>V. Thủ tục xin miễn ngoại ngữ với chứng chỉ quốc tế:</strong></p>

<p>1. Sinh viên làm thủ tục kiểm tra chứng chỉ ngoại ngữ: tại trung tâm Ngôn ngữ và Hỗ trợ trao đổi học thuật (CLA) tầng 1 nhà C3B đến hết ngày 25/8/2023. Các hướng dẫn thủ tục: https://cla.hust.edu.vn/thu-tuc-hau-kiem-cac-chung-chi-quoc-te/</p>

<p>Danh sách sinh viên đã nộp chứng chỉ ngoại ngữ cho phòng Tuyển sinh và trung tâm CLA và đã được kiểm tra sự chính xác của chứng chỉ: https://cla.hust.edu.vn/</p>

<p>2. Trung tâm CLA: sẽ chuyển danh sách sinh viên và chứng chỉ cho phòng Đào tạo để làm thủ tục miễn ngoại ngữ cho sinh viên.</p>

<p>3. Phòng Đào tạo: sẽ cập nhật kết quả vào tài khoản sinh viên.</p>

<p><strong>VI. Tài liệu tham khảo về bài kiểm tra tiếng Anh đầu khóa</strong></p>

<ol>
	<li><a href="https://drive.google.com/file/d/1bFaopsLScoGcLMYwQVRKon4AWNiYaVYC/view?usp=sharing" rel="noopener" target="_blank">Hướng dẫn dự thi TOEIC placement Online</a></li>
	<li><a href="https://drive.google.com/file/d/1u9f6Z-r9-cg9HDZq1VBgjp8WT8dDsbvM/view?usp=sharing" rel="noopener" target="_blank">Quy định về Chứng minh nhân dân không hợp lệ</a></li>
</ol>
                        </div>
                    </div>''',
  },
  {
    "id": 13,
    "title":
        "Quy định xét duyệt và cấp học bổng cho học viên cao học, nghiên cứu sinh áp dụng từ năm 2022-2023",
    "subtitle":
        "Nhằm thu hút và khuyến khích học tập cũng như hỗ trợ kinh phí cho học viên cao học và nghiên cứu sinh của Trường Đại học Bách khoa Hà Nội. Nhà trường có chính sách học bổng sau đại học mới, áp dụng từ năm học 2022-2023, thay thế cho chính sách hỗ trợ kinh phí nghiên cứu sau đại học trước đây.",
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Quy định xét duyệt và cấp học bổng cho học viên cao học, nghiên cứu sinh áp dụng từ năm 2022-2023</h1>
                            <p class="date-created">Thursday, 02/02/2023, 07:38</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Nhằm thu hút và khuyến khích học tập cũng như hỗ trợ kinh phí cho học viên cao học và nghiên cứu sinh của Trường Đại học Bách khoa Hà Nội. Nhà trường có chính sách học bổng sau đại học mới, áp dụng từ năm học 2022-2023, thay thế cho chính sách hỗ trợ kinh phí nghiên cứu sau đại học trước đây.</div>
                                                        <p><b>1. Đối tượng:</b></p>

<p>- Học viên cao học theo học các chương trình thạc sĩ khoa học của Trường.</p>

<p>- Nghiên cứu sinh đang theo học các chương trình tiến sĩ của Trường.</p>

<p><b>2. Mức học bổng</b></p>

<p>Trường áp dụng hai mức học bổng: mức 1 và mức 2</p>

<p>- Mức 1 tương ứng với 100% học phí chương trình đào tạo chuẩn.</p>

<p>- Mức 2 tương ứng với 50% học phí chương trình đào tạo chuẩn.</p>

<p><b>3. Hồ sơ</b></p>

<p>- Đối với học viên cao học: Đơn đăng ký xét học bổng (theo mẫu, Phụ lục I) và Đề cương nghiên cứu (theo mẫu, Phụ lục III) kèm theo các minh chứng đủ điều kiện nhận học bổng theo quy định.</p>

<p>- Đối với nghiên cứu sinh: Đơn đăng ký xét học bổng (theo mẫu, Phụ lục II) kèm theo các minh chứng đủ điều kiện nhận học bổng theo quy định.</p>

<p>(Thông tin chi tiết xem quyết định và phụ lục đính kèm)</p>

<p><strong><a href="https://drive.google.com/file/d/1VHQFQ98RVwmiMKTO2dJzecl4Mtb5jrZs/view?usp=share_link"><span style="color:#2980b9;">Quyet dinh hoc bong</span></a></strong></p>

<p><strong><a href="https://docs.google.com/document/d/1ZidqqP68b7ff5PwqkyDD0AG6PC4cGeaH/edit?usp=share_link&amp;ouid=110213864768883936701&amp;rtpof=true&amp;sd=true"><span style="color:#2980b9;">Phu luc I,II</span></a></strong></p>
                        </div>
                    </div>''',
  },
  {
    "id": 14,
    "title":
        "Thông cáo báo chí: Về việc chuyển Trường Đại học Bách khoa Hà Nội thành Đại học Bách khoa Hà Nội",
    "subtitle":
        "Ngày 02/12/2022, Phó Thủ tướng Chính phủ Vũ Đức Đam đã ký Quyết định 1512/QĐ-TTg về việc chuyển Trường Đại học Bách khoa Hà Nội thành Đại học Bách khoa Hà Nội.",
    "html_data": '''
<div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Thông cáo báo chí: Về việc chuyển Trường Đại học Bách khoa Hà Nội thành Đại học Bách khoa Hà Nội</h1>
                            <p class="date-created">Wednesday, 14/12/2022, 08:42</p>
                        </div>
                        <div class="description">
                                                            <div class="excerpt">Ngày 02/12/2022, Phó Thủ tướng Chính phủ Vũ Đức Đam đã ký Quyết định 1512/QĐ-TTg về việc chuyển Trường Đại học Bách khoa Hà Nội thành Đại học Bách khoa Hà Nội.</div>
                                                        <p>Theo nội dung Quyết định, Đại học Bách khoa Hà Nội là đơn vị sự nghiệp công lập tự chủ trực thuộc Bộ GDĐT. Đại học Bách khoa Hà Nội thực hiện tổ chức lại cơ cấu tổ chức và hoạt động trên cơ sở Trường Đại học Bách khoa Hà Nội theo quy định của Luật Giáo dục đại học năm 2012 và Luật sửa đổi, bổ sung một số điều của Luật Giáo dục đại học năm 2018 và quy định pháp luật có liên quan. Đây là một dấu mốc quan trọng trong quá trình hơn 66 năm xây dựng và phát triển của Bách khoa Hà Nội, phù hợp với chủ trương của Đảng, của Chính phủ và xu hướng phát triển của giáo dục đại học thế giới.<br>
<br>
Sự chuyển đổi này đã được Đại học Bách khoa Hà Nội chuẩn bị hết sức kỹ lưỡng, cẩn trọng, là sự kế thừa những kết quả và kinh nghiệm của quá trình thực hiện tự chủ suốt thời gian dài ở Bách khoa Hà Nội, được thực hiện với tinh thần quyết liệt, đảm bảo sự phát triển đúng với định hướng, tầm nhìn và chiến lược phát triển của Nhà trường qua nhiều thế hệ.<br>
<br>
Đại học Bách khoa Hà Nội có mô hình tổ chức và quản trị tiên tiến, bộ máy tinh gọn, tăng tính chủ động, sáng tạo ở các đơn vị, thực hiện phân cấp tự chủ mạnh nhưng không phân lập, không xây dựng các trường đại học thành viên, thống nhất quan điểm&nbsp;<em><strong>“Một Bách khoa Hà Nội”</strong></em>. Quan điểm này thể hiện sự thống nhất về mục tiêu phát triển, giá trị cốt lõi, chuẩn mực và chất lượng của toàn Đại học. Mô hình đào tạo cử nhân, kỹ sư, thạc sĩ, tiến sĩ được áp dụng thống nhất với bộ chuẩn chương trình đào tạo và quy chế đào tạo do Đại học Bách khoa Hà Nội quy định. Người học khi tốt nghiệp các bậc trình độ đều được cấp&nbsp;<em><strong>văn bằng tốt nghiệp của Đại học Bách khoa Hà Nội</strong></em>&nbsp;để đảm bảo sự gắn kết giữa sinh viên, cựu sinh viên với vị thế và danh tiếng của Đại học.<br>
<br>
Với phương châm “Nhà trường làm nền tảng - Người thầy là chủ thể, là động lực phát triển - Người học là trung tâm”, Đại học Bách khoa Hà Nội có môi trường làm việc quốc tế hoá, nơi hội tụ và phát triển tài năng, thu hút sinh viên ưu tú, học giả xuất sắc trong nước và quốc tế đến học tập, nghiên cứu và làm việc, một trung tâm đổi mới sáng tạo công nghệ xuất sắc của khu vực, tác động quan trọng vào phát triển kinh tế tri thức và góp phần gìn giữ hoà bình đất nước, tiên phong trong hệ thống giáo dục đại học Việt Nam về xây dựng hệ sinh thái đổi mới sáng tạo, phát triển mô hình đào tạo chia sẻ trên nền tảng chuyển đổi số hiện đại.<br>
<br>
Việc chuyển đổi mô hình thành Đại học Bách khoa Hà Nội để thực hiện tốt sứ mạng, tầm nhìn, định hướng chiến lược phát triển, đưa Đại học Bách khoa Hà Nội phát triển đột phá, lên tầm cao mới, trở thành đại học nghiên cứu, đổi mới sáng tạo, tự chủ toàn diện, có môi trường học thuật sáng tạo, cởi mở, tự do học thuật, khơi dậy khát vọng cống hiến của cán bộ viên chức, người lao động, sinh viên và học viên toàn đại học, phát huy giá trị văn hoá, bản sắc của con người Bách khoa Hà Nội.<br>
&nbsp;</p>

<table border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td>Hiện&nbsp;Đại học Bách khoa Hà Nội có 1.785 cán bộ, trong đó có 1.065 cán bộ giảng dạy cơ hữu, 805 cán bộ có trình độ tiến sỹ chiếm 76,3%, trong số đó có 279 GS/PGS, chiếm 26,19%. Năm 2022, Trường có 16 PGS và 2 GS được công nhận đạt chuẩn. Tháng 11/2022, Trường Đại học Bách khoa Hà Nội vinh dự nhận Cờ thi đua của Chính phủ vì đã hoàn thành xuất sắc nhiệm vụ công tác năm học 2020-2021, dẫn đầu các cụm thi đua của Bộ GDĐT, nhiều giảng viên, cán bộ nhận Huân chương Lao động hạng Nhì, hạng Ba và Bằng khen của Bộ trưởng Bộ GDĐT.<br>
			<br>
			Theo Bảng xếp hạng của Tổ chức Quacquarelli Symonds (QS) 2023, Bách khoa Hà Nội nằm trong nhóm 33% các đại học tốt nhất châu Á.&nbsp; Tổ chức QS xếp Bách khoa Hà Nội vào nhóm các trường đại học công có quy mô đào tạo rất lớn và mức độ nghiên cứu rất cao. Còn trong Bảng xếp hạng đại học khu vực Đông Nam Á mới được công bố năm nay, Bách khoa Hà Nội xếp thứ 54 trong số các đại học tốt nhất của khu vực.<br>
			<br>
			Trước đó, Bách khoa Hà Nội cũng được xếp hạng thứ 360 thế giới và số 1 Việt Nam về lĩnh vực Kỹ thuật và Công nghệ theo bảng xếp hạng đại học thế giới theo nhóm ngành năm 2022 của QS. Cả 05 nhóm ngành được xếp hạng năm nay của Đại học Bách khoa Hà Nội bao gồm Kỹ thuật Điện - Điện tử; Kỹ thuật Cơ khí, Hàng không và Chế tạo; Khoa học máy tính và Hệ thống thông tin; Toán học; và Khoa học Vật liệu đều tăng hạng, đứng đầu Việt Nam và xếp ở vị trí từ 300 đến 450 tốt nhất thế giới.</td>
		</tr>
	</tbody>
</table>
                        </div>
                    </div>''',
  }
];

var allNewsList = allNews.map((e) => NewInfo.fromJson(e));
