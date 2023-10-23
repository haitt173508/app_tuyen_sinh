import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BaseScaffold(
        appBar: BaseAppBar(
          title: const Text('Liên hệ'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Container(
              color: const Color.fromARGB(255, 221, 217, 217),
              child: TabBar(
                indicatorColor: context.theme.primaryColor,
                labelColor: context.theme.primaryColor,
                tabs: const [
                  Text('PHÒNG TUYỂN SINH'),
                  Text('CÁC VIỆN ĐÀO TẠO'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: HtmlWidget(ptsData),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: HtmlWidget(cvdtData),
            ),
          ],
        ),
      ),
    );
  }
}

var ptsData = '''
<div class="content box">
				<p id="yui_patched_v3_11_0_1_1556093729368_879"><span style="font-size:14px;"><strong>1. PHỤ TRÁCH CHUNG</strong></span></p>

<ul>
	<li><span style="font-size:14px;"><strong>Trưởng phòng - PGS. TS.Trần Trung Kiên</strong></span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>090 441 4441</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;kien.trantrung1@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>2. PHỤ TRÁCH TUYỂN SINH ĐẠI HỌC</strong></span></p>

<ul>
	<li><span style="font-size:14px;"><strong>Phó Trưởng phòng -&nbsp;PGS. TS. Vũ Duy Hải</strong></span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>090 414 8306</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;hai.vuduy@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Lương Thị Thu Hiền</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0388 955 998</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;hien.luongthithu@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Phạm Thị Thu Hằng</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0949 817 299</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;hang.pham@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Nguyễn Lê Giang</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0989 390 127</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;giang.nguyenle@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>3. PHỤ TRÁCH TUYỂN SINH SAU ĐẠI HỌC</strong></span></p>

<ul>
	<li><span style="font-size:14px;"><strong>Phó Trưởng phòng -&nbsp;TS. Lê Đình Nam</strong></span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0918 99 1510</strong></span></li>
	<li><span style="font-size:14px;">Email: nam.ledinh@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Bành Thị Vân Anh</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0912 010 581</strong></span></li>
	<li><span style="font-size:14px;">Email: anh.banhthivan@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Phan Thu Hà</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0915 180 285</strong></span></li>
	<li><span style="font-size:14px;">Email: ha.phanthu@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Phạm Thu Thủy</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0904 104 109</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;thuy.phamthu2@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>Chuyên viên</strong></span></p>

<ul>
	<li><span style="font-size:14px;">Trần Thiên Nam</span></li>
	<li><span style="font-size:14px;">SĐT:&nbsp;<strong>0989 200 997</strong></span></li>
	<li><span style="font-size:14px;">Email:&nbsp;nam.tranthien@hust.edu.vn</span></li>
</ul>

<p><span style="font-size:14px;"><strong>4. ĐỊA CHỈ LIÊN HỆ</strong></span></p>

<p><span style="font-size:14px;"><b>Phòng Tuyển sinh - Phòng 101, Tòa nhà C1B - Số 1 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội</b></span></p>

<ul>
	<li>Điện thoại hỗ trợ ĐH: (+84) 243 868 3408 - 084 868 3408</li>
	<li>Điện thoại hỗ trợ SĐH: (+84) 0904 104 109 - 0912 010 581</li>
	<li><span style="font-size:14px;">Email:&nbsp;</span>tuyensinh@hust.edu.vn</li>
</ul>

<p><span style="font-size:14px;"><strong><u>(*) Lưu ý:</u></strong> </span></p>

<p><span style="font-size:14px;">Các bậc phụ huynh, các em học sinh hãy liên hệ tới các số điện thoại - hotline trong giờ hành chính (<span style="color:#e74c3c;"><strong>Từ 8h - 12h và 14h&nbsp;- 18h từ Thứ 2 đến Thứ 6</strong></span>). Trong thời gian ngoài giờ hành chính, các phụ huynh và các em có thể chat trực tuyến trên&nbsp; fanpage:&nbsp;<strong><a href="https://www.facebook.com/tsdhbk" target="_blank">www.facebook.com/tsdhbk</a>&nbsp;</strong></span></p>

<p><span style="font-size:14px;">Nhiều câu hỏi được giải đáp tại Groups K68-ĐHBKHN:&nbsp;<strong><a href="https://www.facebook.com/groups/k67.dhbkhn/" target="_blank">facebook.com/groups/k68.dhbkhanoi/</a></strong></span></p>

<p><span style="font-size:14px;">Hoặc đã được giải đáp tại:<strong>&nbsp;<a href="https://ts.hust.edu.vn/hoi-dap" target="_blank">https://ts.hust.edu.vn/hoi-dap</a></strong></span></p>

<p>&nbsp;</p>
			</div>
''';

var cvdtData = '''
<div class="description">
                                                            <div class="excerpt">Danh sách các thầy cô giáo phụ trách tư vấn tuyển sinh tại các Viện đào tạo thuộc Trường ĐH Bách Khoa Hà Nội.</div>
                                                        <p style="margin-bottom:3.75pt; text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">1. Viện Cơ khí</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Hoàng Hồng Hải, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:hai.hoanghong@hust.edu.vn">hai.hoanghong@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0934.493.466</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://sme.hust.edu.vn/" style="color:blue; text-decoration:underline">https://sme.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="margin-bottom:3.75pt; text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">2. Viện Cơ khí Động lực</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Phạm Văn Sáng, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:sang.phamvan@hust.edu.vn">sang.phamvan@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0966.633.683</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="http://ste.hust.edu.vn/" style="color:blue; text-decoration:underline">http://ste.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">3. Viện Điện</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Phạm Việt Phương, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:phuong.phamviet@hust.edu.vn">phuong.phamviet@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0945.392.266</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://see.hust.edu.vn/" style="color:blue; text-decoration:underline">https://see.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">4. Viện Điện tử - Viễn thông</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">PGS.TS. Nguyễn Đức Minh, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:minh.nguyenduc1@hust.edu.vn">minh.nguyenduc1@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0963.122.389</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="http://set.hust.edu.vn/" style="color:blue; text-decoration:underline">http://set.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="margin-bottom:3.75pt; text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">5</span><span lang="VI" style="color:black">. </span><span style="color:black">Viện Công nghệ thông tin và Truyền thông</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">PGS.TS. Cao Tuấn Dũng, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:dung.caotuan@hust.edu.vn">dung.caotuan@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0983.359.425</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://soict.hust.edu.vn/" style="color:blue; text-decoration:underline">https://soict.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">&nbsp;6. Viện Toán ứng dụng và Tin học</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Nguyễn Thị Thanh Huyền, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:huyen.nguyenthithanh@hust.edu.vn" style="color:blue; text-decoration:underline" target="_blank">huyen.nguyenthithanh@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0988.833.575</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website:&nbsp;<a href="http://sami.hust.edu.vn/" style="color:blue; text-decoration:underline"><span style="color:#0563c1">http://sami.hust.edu.vn</span></a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">7. Viện Kỹ thuật Hóa học</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Nguyễn Ngọc Tuệ, Phó Viện trưởng&nbsp;</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:tue.nguyenngoc@hust.edu.vn">tue.nguyenngoc@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT: 0976.545.519</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website:&nbsp;<a href="http://www.chemeng.hust.edu.vn/tuyensinh" style="color:blue; text-decoration:underline" target="_blank"><span style="color:#0563c1">www.</span></a><a href="http://chemeng.hust.edu.vn/" style="color:blue; text-decoration:underline"><span style="color:#0563c1">chemeng.hust.edu.vn/</span></a><a href="http://www.chemeng.hust.edu.vn/tuyensinh" style="color:blue; text-decoration:underline" target="_blank"><span style="color:#0563c1">tuyensinh</span></a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">8. Viện Công nghệ Sinh học và Công nghệ Thực phẩm</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">PGS.TS. Nguyễn Thị Minh Tú, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:tu.nguyenthiminh@hust.edu.vn" style="color:blue; text-decoration:underline" target="_blank">tu.nguyenthiminh@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0912.573.366</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="http://sbft.hust.edu.vn/" style="color:blue; text-decoration:underline">http://sbft.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">9</span><span lang="VI" style="color:black">. </span><span style="color:black">Viện Khoa học và Công nghệ Môi trường</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">PGS.TS. Nguyễn Đức Quảng, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:quang.nguyeduc@hust.edu.vn">quang.nguyeduc@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT: 0918.230.009</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://inest.hust.edu.vn/" style="color:blue; text-decoration:underline">https://inest.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="margin-bottom:3.75pt; text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">10.&nbsp;Viện Khoa học và Kỹ thuật Vật liệu</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">ThS. Nguyễn Minh Thuyết, Trợ lý đào tạo và tuyển sinh Viện</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:thuyet.nguyeminh@hust.edu.vn">thuyet.nguyeminh@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT: 0983.689.765</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://mse.hust.edu.vn/" style="color:blue; text-decoration:underline">https://mse.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">11. Viện Khoa học và Công nghệ nhiệt lạnh</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Trịnh Quốc Dũng, Trợ lý đào tạo Viện</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:dung.trinhquoc@hust.edu.vn" style="color:blue; text-decoration:underline">dung.trinhquoc@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT: 0963.860.588</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://sheer.hust.edu.vn/" style="color:blue; text-decoration:underline">https://sheer.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">12. Viện Vật lý Kỹ thuật</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">PGS. Nguyễn Hữu Lâm, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:lam.nguyenhuu@hust.edu.vn">lam.nguyenhuu@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;098 909 6174</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website:&nbsp;<a href="https://sep.hust.edu.vn/" style="color:blue; text-decoration:underline"><span style="color:black"><span style="text-decoration:none">https://sep.hust.edu.vn</span></span></a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">13. Viện Dệt may - Da giầy và Thời trang</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Đào Anh Tuấn, Trợ lý đào tạo Viện</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:tuan.daoanh@hust.edu.vn">tuan.daoanh@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT: 0979.200.780</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://bktextile.hust.edu.vn/" style="color:blue; text-decoration:underline">https://bktextile.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">14. Viện Sư phạm Kỹ thuật</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Nguyễn Thị Hương Giang, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:giang.nguyenthihuong@hust.edu.vn">giang.nguyenthihuong@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0915.754.232</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://feed.hust.edu.vn/" style="color:blue; text-decoration:underline">https://feed.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">15. Viện Kinh tế và Quản lý</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">TS. Phạm Cảnh Huy, Phó Viện trưởng</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email:&nbsp;<a href="mailto:huy.phamcanh@hust.edu.vn" style="color:blue; text-decoration:underline"><span style="color:black"><span style="text-decoration:none">huy.phamcanh@hust.edu.vn</span></span></a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0936.285.885</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="http://sem.hust.edu.vn/" style="color:blue; text-decoration:underline">http://sem.hust.edu.vn/</a></span></span></span></span></li>
</ul>

<p style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="line-height:normal"><b><span style="color:black">16. Viện Ngoại ngữ</span></b></span></span></span></p>

<ul>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">ThS. Nguyễn Mỹ Bình, Phụ trách truyền thông Viện&nbsp;</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Email: <a href="mailto:binh.nguyenmy@hust.edu.vn&nbsp;">binh.nguyenmy@hust.edu.vn</a></span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">SĐT:&nbsp;0903.226.899</span></span></span></span></li>
	<li style="text-align:justify; margin:0cm 0cm 8pt"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="font-size:12pt"><span style="color:black"><span style="line-height:normal">Website: <a href="https://sofl.hust.edu.vn/" style="color:blue; text-decoration:underline">https://sofl.hust.edu.vn/</a></span></span></span></span></li>
</ul>
                        </div>
 ''';
