insert into nganh_hoc(id, ten_nganh, ky_hieu, is_deleted)
values(1, 'Cong Nghe Thong Tin', 'FIT', 0);
insert into nganh_hoc(id, ten_nganh, ky_hieu, is_deleted)
values(2, 'Du Lich', 'FOT', 0);
insert into nganh_hoc(id, ten_nganh, ky_hieu, is_deleted)
values(3, 'Tao Dang Cong Nghiep', 'TDCN', 0);
insert into nganh_hoc(id, ten_nganh, ky_hieu, is_deleted)
values(4, 'Ngon Ngu Anh', 'NNA', 0);


alter table ho_so_sv
alter column cb_tuyen_sinh_username type text;
alter table ho_so_sv
alter column cb_tuyen_sinh_username type text;
insert into ho_so_sv(ho_ten, ngay_sinh, gioi_tinh, dia_chi, email, sdt, cmnd, noi_sinh, dan_toc, ho_khau_thuong_tru, ngoai_ngu, cb_tuyen_sinh_username, nganh_hoc_id, ngay_lap, is_deleted, trinh_do, nam_tot_nghiep, noi_cap, chuyen_nganh)
values('Nguyễn Văn A', '1997-03-12', 1, 'Hưng Yên', 'nva1997@gmail.com', '0153421234', '213432534123', 'Hưng Yên', 'Kinh', 'Ba Đình', 'Tiếng Anh', 'ngoclong_1997', '1', '2017-08-28', 0, 'THPT', '2017', 'Hưng Yên', '');

insert into ho_so_sv(ho_ten, ngay_sinh, gioi_tinh, dia_chi, email, sdt, cmnd, noi_sinh, dan_toc, ho_khau_thuong_tru, ngoai_ngu, cb_tuyen_sinh_username, nganh_hoc_id, ngay_lap, is_deleted, trinh_do, nam_tot_nghiep, noi_cap, chuyen_nganh)
values('Nguyễn Văn B', '1997-01-13', 0, 'Quảng Ninh', 'nvb1997@gmail.com', '0194837291', '947219432123', 'Quảng Ninh', 'Kinh', 'Đống Đa', 'Không', 'ngoclong_1997', '2', '2017-08-28', 0, 'Đại Học', '2017', 'Hà Nội', 'CNTT');

insert into ho_so_sv(ho_ten, ngay_sinh, gioi_tinh, dia_chi, email, sdt, cmnd, noi_sinh, dan_toc, ho_khau_thuong_tru, ngoai_ngu, cb_tuyen_sinh_username, nganh_hoc_id, ngay_lap, is_deleted, trinh_do, nam_tot_nghiep, noi_cap, chuyen_nganh)
values('Nguyễn Văn C', '1997-07-09', 0, 'Hà Nội', 'nvc1997@gmail.com', '0166403927', '908493827183', 'Hà Nội', 'Kinh', 'Hai Bà Trưng', 'Tiếng Pháp', 'ngoclong_1997', '3', '2017-08-28', 0, 'Cao Đẳng', '2017', 'Hà Nội', 'Bán rong');

insert into ho_so_sv(ho_ten, ngay_sinh, gioi_tinh, dia_chi, email, sdt, cmnd, noi_sinh, dan_toc, ho_khau_thuong_tru, ngoai_ngu, cb_tuyen_sinh_username, nganh_hoc_id, ngay_lap, is_deleted, trinh_do, nam_tot_nghiep, noi_cap, chuyen_nganh)
values('Nguyễn Văn D', '1997-12-20', 1, 'Thái Bình', 'nvd1997@gmail.com', '09039291823', '324521234567', 'Thái Bình', 'Kinh', 'Thanh Xuân', 'Không', 'ngoclong_1997', '4', '2017-08-28', 0, 'Trung Cấp', '2017', 'Thái Bình', 'Xây dựng');


