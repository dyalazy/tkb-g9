﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;

namespace TKB_G9_Service
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://abc.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class G9_Service : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        /****************TÀI KHOẢN**************/
        [WebMethod]
        public List<PermissionUser> getListPermissionByRole(int idRole)
        {
            try{
                TKBEntities db = new TKBEntities();
                foreach( var cur in db.LoaiTaiKhoans)
                {
                    if (cur.MaLoaiTK == idRole)
                    {
                        cur.PermissionUsers.Load();
                        var result = cur.PermissionUsers;
                        return result.ToList();
                    }                 
                }
                return null;
            }
            catch
            {
                return null;
            }
        }
        [WebMethod]
        public TaiKhoan getTaiKhoanByUserName(String userName)
        {
            try
            {
                TKBEntities db = new TKBEntities();
                var result = db.TaiKhoans.Where(us => us.TenTaiKhoan == userName).FirstOrDefault();
                return result;
            }
            catch
            {
                return null;
            }
        }
        [WebMethod]
        public LoaiTaiKhoan getLoaiTaiKhoanByUserName(String userName)
        {
            try
            {
                TKBEntities db = new TKBEntities();
                var result = db.TaiKhoans.Where(us => us.TenTaiKhoan == userName).FirstOrDefault();
                result.LoaiTaiKhoanReference.Load();
                return result.LoaiTaiKhoan;
            }
            catch
            {
                return null;
            }
        }
        [WebMethod]
        public bool KiemTraDangNhap(string user, string password)
        {
            TKBEntities db = new TKBEntities();
            var list = db.TaiKhoans
                            .Where(tk => tk.TenTaiKhoan == user)
                            .Where(tk => tk.MatKhau == password)
                            .Count();
            if (list == 1)
                return true;
            return false;
        }

        /*****************LOP*******************/
        [WebMethod]
        public List<Lop> GetDanhSachLop()
        {
            TKBEntities db = new TKBEntities();
            var list = db.Lops.OrderBy(sort => sort.TenLop).ToList();
            return list;
        }
        [WebMethod]
        public Lop GetLop(int maLop)
        {
            using (var db = new TKBEntities())
            {
                Lop lop = db.Lops.FirstOrDefault(l => l.MaLop == maLop);
                return lop;
            }
        }
        [WebMethod]
        public bool ThemLop(Lop lop)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    db.AddToLops(lop);
                    db.SaveChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool XoaLop(int maLop)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    Lop lop = db.Lops.First(l => l.MaLop == maLop);
                    db.DeleteObject(lop);
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool CapNhatLop(Lop lopClient)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    Lop lop = db.Lops.First(l => l.MaLop == lopClient.MaLop);
                    lop.TenLop = lopClient.TenLop;
                    lop.KhoiLop = lopClient.KhoiLop;
                    lop.CaHoc = lopClient.CaHoc;
                    lop.SiSo = lopClient.SiSo;
                    lop.GhiChu = lopClient.GhiChu;
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        /*****************GIAOVIEN*******************/
        [WebMethod]
        public List<GiaoVien> GetDanhSachGiaoVien()
        {
            try
            {
                TKBEntities db = new TKBEntities();
                var list = db.GiaoViens.OrderBy(sort => sort.TenGiaoVien).ToList();
                return list;
            }
            catch
            {
                return null;
            }
        }
        [WebMethod]
        public List<GiaoVien> GetDanhSachGiaoVienTheoMonHoc(int maMonHoc)
        {
            using (var db = new TKBEntities())
            {
                List<GiaoVien> giaoViens = db.GiaoViens.Where(p => p.MonHoc.MaMonHoc == maMonHoc).OrderBy(o => o.TenGiaoVien).ToList();
                return giaoViens;
            }
        }
        [WebMethod]
        public GiaoVien GetGiaoVien(int maGiaoVien)
        {
            using (var db = new TKBEntities())
            {
                GiaoVien gv = db.GiaoViens.FirstOrDefault(l => l.MaGiaoVien == maGiaoVien);
                return gv;
            }
        }
        [WebMethod]
        public bool ThemGiaoVien(GiaoVien gv)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    db.AddToGiaoViens(gv);
                    db.SaveChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool XoaGiaoVien(int maGiaoVien)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    GiaoVien gv = db.GiaoViens.First(l => l.MaGiaoVien == maGiaoVien);
                    db.DeleteObject(gv);
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool CapNhatGiaoVien(GiaoVien GiaoVienClient)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    GiaoVien gv = db.GiaoViens.First(l => l.MaGiaoVien == GiaoVienClient.MaGiaoVien);
                    gv.TenGiaoVien = GiaoVienClient.TenGiaoVien;
                    gv.GioiTinh = GiaoVienClient.GioiTinh;
                    gv.DiaChi = GiaoVienClient.DiaChi;
                    gv.DienThoai = GiaoVienClient.DienThoai;
                    gv.Email = GiaoVienClient.Email;
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        /*****************PHONG*******************/
        [WebMethod]
        public List<Phong> GetDanhSachPhong()
        {
            TKBEntities db = new TKBEntities();
            var list = db.Phongs.OrderBy(sort => sort.TenPhong).ToList();
            return list;
        }
        [WebMethod]
        public Phong GetPhong(int maPhong)
        {
            using (var db = new TKBEntities())
            {
                Phong gv = db.Phongs.FirstOrDefault(l => l.MaPhong == maPhong);
                return gv;
            }
        }
        [WebMethod]
        public bool ThemPhong(Phong gv)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    db.AddToPhongs(gv);
                    db.SaveChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool XoaPhong(int maPhong)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    Phong gv = db.Phongs.First(l => l.MaPhong == maPhong);
                    db.DeleteObject(gv);
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool CapNhatPhong(Phong PhongClient)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    Phong gv = db.Phongs.First(l => l.MaPhong == PhongClient.MaPhong);
                    gv.TenPhong = PhongClient.TenPhong;
                    gv.TinhTrang = PhongClient.TinhTrang;
                    gv.SucChua = PhongClient.SucChua;
                    db.SaveChanges();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        /*****************MÔN HỌC*******************/
        [WebMethod]
        public List<MonHoc> GetDanhSachMonHoc()
        {
            TKBEntities db = new TKBEntities();
            var list = db.MonHocs.OrderBy(sort => sort.TenMonHoc).ToList();
            return list;
        }

        /******************TKB******************/
        #region TKB
        //nhdanh add
        [WebMethod]
        public Phong getPhongByMaChiTietTKB(int maCT)
        {
            try
            {
                TKBEntities db = new TKBEntities();
                var cttkb = db.ChiTietTKBs.Where(ct => ct.MaChiTietTKB == maCT).FirstOrDefault();
                cttkb.PhongReference.Load();
                return cttkb.Phong;
            }
            catch
            {
                return null;
            }
        }
        [WebMethod]
        public Lop getLopByMaChiTietTKB(int maCT)
        {
            try
            {
                TKBEntities db = new TKBEntities();
                var cttkb = db.ChiTietTKBs.Where(ct => ct.MaChiTietTKB == maCT).FirstOrDefault();
                cttkb.ThoiKhoaBieuReference.Load();
                cttkb.ThoiKhoaBieu.LopReference.Load();
                var result = cttkb.ThoiKhoaBieu.Lop;
                return result;
            }
            catch
            {
                return null;
            }

        }
        [WebMethod]
        public List<ChiTietTKB> getListTKBByGiaoVien(string tenTaiKhoan)
        {
            try
            {
                TKBEntities db = new TKBEntities();
                foreach (var cur in db.ChiTietTKBs)
                {
                    cur.GiaoVienReference.Load();
                }
                var result = db.ChiTietTKBs.Where(ct => ct.GiaoVien.TenTK == tenTaiKhoan).ToList();
                return result;
            }
            catch
            {
                return null;
            }

        }
        //ncdanh end

        [WebMethod]
        public bool GenerateTKB(string namHoc, List<List<ChiTietTKB>> arrTKB1, List<MonHoc> dsMonHoc, List<Lop> dsLop, List<Phong> dsPhong, List<GiaoVien> dsGiaoVien)
        {
            try
            {
                // Xóa thông tin TKB cũ sẽ sắp mới
                foreach (Lop l in dsLop)
                {
                    DeleteTKB(l.MaLop, namHoc);
                }
                // Lấy danh sách TKB cũ 
                List<ThoiKhoaBieu> lstTKB = GetTKB(namHoc);
                List<List<List<ChiTietTKB>>> listTKBs = new List<List<List<ChiTietTKB>>>();
                for (int l = 0; l < dsLop.Count; l++)
                {
                    List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
                    for (int i = 0; i < arrTKB1.Count; i++)
                    {
                        List<ChiTietTKB> temp = new List<ChiTietTKB>();
                        for (int j = 0; j < arrTKB1[i].Count; j++)
                        {
                            ChiTietTKB ct = new ChiTietTKB();
                            AddChiTietTKB(ref ct, arrTKB1[i][j]);
                            temp.Add(ct);
                        }
                        arrTKB.Add(temp);
                    }

                    // Tìm phòng trống
                    Phong phong = new Phong();
                    int caHoc = dsLop[l].CaHoc == null ? 1 : (dsLop[l].CaHoc.Equals("Sáng") ? 1 : 2);
                    phong = GetPhong(ref dsPhong, (int)dsLop[l].SiSo);
                    ThoiKhoaBieu tkb = BuildTKB(namHoc, caHoc, dsMonHoc, dsLop, ref dsPhong, dsGiaoVien, lstTKB, l, arrTKB, phong);
                    lstTKB.Add(tkb);
                    //Tối ưu TKB
                    listTKBs.Add(OptimizeTKB(arrTKB));
                }

                // Save TKB;
                SaveTKB(lstTKB, dsLop);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        [WebMethod]
        public bool TestCreateTKB()
        {
            List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
            for (int i = 2; i <= 8; i++) // 7days: from Monday to Sunday
            {
                List<ChiTietTKB> dsTKB = new List<ChiTietTKB>();
                for (int j = 1; j <= Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]) + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]); j++)
                {
                    ChiTietTKB ct = new ChiTietTKB();
                    ct.Thu = i;
                    ct.TietBatDau = j;
                    ct.TietKetThuc = j;
                    dsTKB.Add(ct);
                }
                arrTKB.Add(dsTKB);
            }
            using (var db = new TKBEntities())
            {
                //List<Lop> dsLop = db.Lops.ToList();
                List<Lop> dsLop = new List<Lop>();
                dsLop.Add(new Lop() { MaLop = 7, SiSo = 20, CaHoc = "Sáng" });
                dsLop.Add(new Lop() { MaLop = 8, SiSo = 20, CaHoc = "Sáng" });
                List<MonHoc> dsMonHoc = db.MonHocs.ToList();
                List<Phong> dsPhong = db.Phongs.ToList();
                List<GiaoVien> dsGiaoVien = db.GiaoViens.ToList();
                return GenerateTKB("2012", arrTKB, dsMonHoc, dsLop, dsPhong, dsGiaoVien);

            }
        }

        [WebMethod]
        public bool CreateTKB(List<Lop> dsLop, string namHoc)
        {
            List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
            for (int i = 2; i <= 8; i++) // 7days: from Monday to Sunday
            {
                List<ChiTietTKB> dsTKB = new List<ChiTietTKB>();
                for (int j = 1; j <= Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]) + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]); j++)
                {
                    ChiTietTKB ct = new ChiTietTKB();
                    ct.Thu = i;
                    ct.TietBatDau = j;
                    ct.TietKetThuc = j;
                    dsTKB.Add(ct);
                }
                arrTKB.Add(dsTKB);
            }
            using (var db = new TKBEntities())
            {
                List<MonHoc> dsMonHoc = db.MonHocs.ToList();
                List<Phong> dsPhong = db.Phongs.ToList();
                List<GiaoVien> dsGiaoVien = db.GiaoViens.ToList();
                return GenerateTKB(namHoc, arrTKB, dsMonHoc, dsLop, dsPhong, dsGiaoVien);

            }
        }

        [WebMethod]
        public List<ThoiKhoaBieu> GetTKB(string namHoc)
        {
            List<ThoiKhoaBieu> temp;
            using (var db = new TKBEntities())
            {
                temp = db.ThoiKhoaBieux.Where(p => p.NamHoc == namHoc).ToList();
                List<ThoiKhoaBieu> listTKB = new List<ThoiKhoaBieu>();
                foreach (ThoiKhoaBieu t in temp)
                {
                    ThoiKhoaBieu tkb = t;
                    Lop lop = GetLop((int)t.LopReference.EntityKey.EntityKeyValues[0].Value);
                    tkb.Lop = new Lop() { MaLop = lop.MaLop };
                    listTKB.Add(tkb);
                }
                listTKB.Sort((x, y) => string.Compare(x.Lop.MaLop.ToString(), y.Lop.MaLop.ToString()));
                return listTKB;
            }
        }

        [WebMethod]
        public ThoiKhoaBieu GetTKBFromLop(int maLop, string namHoc)
        {
            using (var db = new TKBEntities())
            {
                ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.Lop.MaLop == maLop && p.NamHoc == namHoc);
                return tkb;
            }
        }

        [WebMethod]
        public List<ChiTietTKB> GetDanhSachChiTietTKB(int maTKB)
        {
            using (var db = new TKBEntities())
            {
                List<ChiTietTKB> lst = db.ChiTietTKBs.Where(p => p.ThoiKhoaBieu.MaTKB == maTKB).ToList();
                return lst;
            }
        }

        [WebMethod]
        public ChiTietTKB GetChiTietTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                ChiTietTKB chiTiet = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                return chiTiet;
            }
        }

        [WebMethod]
        public Lop GetLopFromTKB(int maTKB)
        {
            using (var db = new TKBEntities())
            {
                ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB);
                if (tkb.LopReference.EntityKey != null)
                {
                    int maLop = (int)tkb.LopReference.EntityKey.EntityKeyValues[0].Value;
                    Lop lop = db.Lops.FirstOrDefault(p => p.MaLop == maLop);
                    return lop;
                }
                return new Lop();
            }
        }

        [WebMethod]
        public GiaoVien GetGiaoVienFromTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                ChiTietTKB temp = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                if (temp.GiaoVienReference.EntityKey != null)
                {
                    int maGV = (int)temp.GiaoVienReference.EntityKey.EntityKeyValues[0].Value;
                    GiaoVien gv = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV);
                    return gv;
                }
                return new GiaoVien();
            }
        }

        [WebMethod]
        public MonHoc GetMonHocFromTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                ChiTietTKB temp = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                if (temp.MonHocReference.EntityKey != null)
                {
                    int maMonHoc = (int)temp.MonHocReference.EntityKey.EntityKeyValues[0].Value;
                    MonHoc monHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMonHoc);
                    return monHoc;
                }
                return new MonHoc();
            }
        }

        [WebMethod]
        public Phong GetPhongFromTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                ChiTietTKB temp = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                if (temp.PhongReference.EntityKey != null)
                {
                    int maPhong = (int)temp.PhongReference.EntityKey.EntityKeyValues[0].Value;
                    Phong phong = db.Phongs.FirstOrDefault(p => p.MaPhong == maPhong);
                    return phong;
                }
                return new Phong();
            }
        }

        [WebMethod]
        public bool UpdateTKB(int maChiTiet, int maMH, int maGV, int maPhong)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    ChiTietTKB chiTiet = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                    if (chiTiet != null)
                    {
                        chiTiet.MonHoc = db.MonHocs.FirstOrDefault(o => o.MaMonHoc == maMH);
                        chiTiet.GiaoVien = db.GiaoViens.FirstOrDefault(o => o.MaGiaoVien == maGV);
                        chiTiet.Phong = db.Phongs.FirstOrDefault(o => o.MaPhong == maPhong);
                    }
                    db.SaveChanges();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [WebMethod]
        public bool NewTKB(int lop, string namHoc)
        {
            try
            {
                if (namHoc.Length > 0)
                {
                    DeleteTKB(lop, namHoc);
                    using (var db = new TKBEntities())
                    {
                        ThoiKhoaBieu tkb = new ThoiKhoaBieu()
                        {
                            Lop = db.Lops.FirstOrDefault(p => p.MaLop == lop),
                            NamHoc = namHoc
                        };
                        db.AddToThoiKhoaBieux(tkb);
                        db.SaveChanges();
                        return true;
                    }
                }
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [WebMethod]
        public bool DeleteChiTietTKB(int maChiTiet)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    ChiTietTKB chiTiet = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                    if (chiTiet != null)
                    {
                        db.DeleteObject(chiTiet);
                        db.SaveChanges();
                    }

                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [WebMethod]
        public bool SaveChiTietTKB(int maTKB, int thu, int tiet, int maMH, int maGV, int maPhong)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    ChiTietTKB chiTiet = new ChiTietTKB()
                    {
                        ThoiKhoaBieu = db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB),
                        MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMH),
                        GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV),
                        Phong = db.Phongs.FirstOrDefault(p => p.MaPhong == maPhong),
                        TietBatDau = tiet,
                        TietKetThuc = tiet,
                        Thu = thu
                    };
                    db.AddToChiTietTKBs(chiTiet);
                    db.SaveChanges();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [WebMethod]
        public string CheckUpdateTKB(int maChiTiet, int maMH, int maGV, int maPhong)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    ChiTietTKB chiTiet = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                    if (chiTiet != null)
                    {
                        int maTKB = (int)chiTiet.ThoiKhoaBieuReference.EntityKey.EntityKeyValues[0].Value;
                        ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB);
                        List<ThoiKhoaBieu> lstTKB = GetTKB(tkb.NamHoc);
                        List<ChiTietTKB> lstChiTiet = GetDanhSachChiTietTKB(tkb.MaTKB);
                        List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
                        for (int i = 2; i <= 8; i++) // 7days: from Monday to Sunday
                        {
                            List<ChiTietTKB> dsTKB = new List<ChiTietTKB>();
                            for (int j = 1; j <= Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]) + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]); j++)
                            {
                                ChiTietTKB ct = new ChiTietTKB();
                                dsTKB.Add(ct);
                            }
                            arrTKB.Add(dsTKB);
                        }
                        foreach (ChiTietTKB ct in lstChiTiet)
                        {
                            int maMonHoc = (int)ct.MonHocReference.EntityKey.EntityKeyValues[0].Value;
                            int maGiaoVien = (int)ct.GiaoVienReference.EntityKey.EntityKeyValues[0].Value;
                            arrTKB[(int)ct.Thu - 2][(int)ct.TietBatDau - 1].MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMonHoc);
                            arrTKB[(int)ct.Thu - 2][(int)ct.TietBatDau - 1].GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGiaoVien);
                        }
                        MonHoc mh = db.MonHocs.FirstOrDefault(o => o.MaMonHoc == maMH);
                        if (KiemTraMonHoc(arrTKB, mh, (int)chiTiet.Thu, (int)chiTiet.TietBatDau))
                        {
                            GiaoVien gv = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV);
                            if (KiemTraGiaoVien(lstTKB, arrTKB, gv, mh.MaMonHoc, (int)chiTiet.Thu, (int)chiTiet.TietBatDau))
                            {
                                // Kiểm tra phòng (từ từ làm, đuối òi)
                                return "true";
                            }
                            else return "Giáo viên này bận rồi.";
                        }
                        else return "Môn học này không xếp vào đây được";
                    }
                    else return "Có lỗi xảy ra ở hệ thống";
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod]
        public string CheckSaveTKB(int maTKB, int thu, int tiet, int maMH, int maGV, int maPhong)
        {
            try
            {
                using (var db = new TKBEntities())
                {
                    ChiTietTKB chiTiet = new ChiTietTKB()
                    {
                        ThoiKhoaBieu = db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB),
                        Thu = thu,
                        TietBatDau = tiet,
                        TietKetThuc = tiet,
                        MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMH),
                        GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV),
                        Phong = db.Phongs.FirstOrDefault(p => p.MaPhong == maPhong)
                    };
                    if (chiTiet != null)
                    {
                        ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB);
                        List<ThoiKhoaBieu> lstTKB = GetTKB(tkb.NamHoc);
                        List<ChiTietTKB> lstChiTiet = GetDanhSachChiTietTKB(tkb.MaTKB);
                        List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
                        for (int i = 2; i <= 8; i++) // 7days: from Monday to Sunday
                        {
                            List<ChiTietTKB> dsTKB = new List<ChiTietTKB>();
                            for (int j = 1; j <= Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]) + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]); j++)
                            {
                                ChiTietTKB ct = new ChiTietTKB();
                                dsTKB.Add(ct);
                            }
                            arrTKB.Add(dsTKB);
                        }
                        foreach (ChiTietTKB ct in lstChiTiet)
                        {
                            int maMonHoc = (int)ct.MonHocReference.EntityKey.EntityKeyValues[0].Value;
                            int maGiaoVien = (int)ct.GiaoVienReference.EntityKey.EntityKeyValues[0].Value;
                            arrTKB[(int)ct.Thu - 2][(int)ct.TietBatDau - 1].MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMonHoc);
                            arrTKB[(int)ct.Thu - 2][(int)ct.TietBatDau - 1].GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGiaoVien);
                        }
                        MonHoc mh = db.MonHocs.FirstOrDefault(o => o.MaMonHoc == maMH);
                        if (KiemTraMonHoc(arrTKB, mh, (int)chiTiet.Thu, (int)chiTiet.TietBatDau))
                        {
                            GiaoVien gv = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV);
                            if (KiemTraGiaoVien(lstTKB, arrTKB, gv, mh.MaMonHoc, (int)chiTiet.Thu, (int)chiTiet.TietBatDau))
                            {
                                // Kiểm tra phòng (từ từ làm, đuối òi)
                                return "true";
                            }
                            else return "Giáo viên này bận rồi.";
                        }
                        else return "Môn học này không xếp vào đây được";
                    }
                    else return "Có lỗi xảy ra ở hệ thống";
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        private void SaveTKB(List<ThoiKhoaBieu> lstTKB, List<Lop> dsLop)
        {
            using (var db = new TKBEntities())
            {

                foreach (ThoiKhoaBieu oTKB in lstTKB)
                {
                    if (oTKB.MaTKB == 0)
                    {
                        ThoiKhoaBieu tkb = new ThoiKhoaBieu()
                        {
                            Lop = db.Lops.FirstOrDefault(p => p.MaLop == oTKB.Lop.MaLop),
                            NamHoc = oTKB.NamHoc
                        };
                        db.AddToThoiKhoaBieux(tkb);
                        db.SaveChanges();
                        foreach (ChiTietTKB ct in oTKB.ChiTietTKBs.ToList())
                        {
                            ChiTietTKB chiTiet = new ChiTietTKB()
                            {
                                ThoiKhoaBieu = tkb,
                                MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == ct.MonHoc.MaMonHoc),
                                GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == ct.GiaoVien.MaGiaoVien),
                                Phong = db.Phongs.FirstOrDefault(p => p.MaPhong == ct.Phong.MaPhong),
                                TietBatDau = ct.TietBatDau + 1,
                                TietKetThuc = ct.TietKetThuc + 1,
                                Thu = ct.Thu + 2
                            };
                            db.AddToChiTietTKBs(chiTiet);
                            db.SaveChanges();
                        }
                    }
                }
            }

        }

        private void DeleteTKB(int maLop, string namHoc)
        {
            using (var db = new TKBEntities())
            {
                ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.Lop.MaLop == maLop && (p.NamHoc == namHoc || (namHoc == null && p.NamHoc.Equals(null))));
                if (tkb != null)
                {
                    List<ChiTietTKB> chiTiets = db.ChiTietTKBs.Where(p => p.ThoiKhoaBieu.MaTKB == tkb.MaTKB).ToList();
                    if (chiTiets != null)
                    {
                        foreach (var ct in chiTiets)
                        {
                            db.DeleteObject(ct);
                        }
                        db.SaveChanges();
                    }
                    db.DeleteObject(tkb);
                    db.SaveChanges();
                }
            }
        }

        private void AddChiTietTKB(ref ChiTietTKB ct, ChiTietTKB chiTietTKB)
        {
            ct.MaChiTietTKB = chiTietTKB.MaChiTietTKB;
            ct.MonHoc = chiTietTKB.MonHoc;
            ct.GiaoVien = chiTietTKB.GiaoVien;
            ct.Phong = chiTietTKB.Phong;
            ct.ThoiKhoaBieu = chiTietTKB.ThoiKhoaBieu;
            ct.TietBatDau = chiTietTKB.TietBatDau;
            ct.TietKetThuc = chiTietTKB.TietKetThuc;
            ct.Thu = chiTietTKB.Thu;
        }

        private List<List<ChiTietTKB>> OptimizeTKB(List<List<ChiTietTKB>> arrTKB)
        {
            return arrTKB;
        }

        private ThoiKhoaBieu BuildTKB(string namHoc, int buoi, List<MonHoc> dsMonHoc, List<Lop> dsLop, ref List<Phong> dsPhong, List<GiaoVien> dsGiaoVien, List<ThoiKhoaBieu> lstTKB, int l, List<List<ChiTietTKB>> arrTKB, Phong phong)
        {
            ThoiKhoaBieu tkb = new ThoiKhoaBieu();
            tkb.Lop = dsLop[l];
            tkb.NamHoc = namHoc;
            int tietDau = buoi == 1 ? 0 : Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]);
            int tietCuoi = buoi == 1 ? (tietDau + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"])) : (tietDau + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]));
            for (int k = 0; k < dsMonHoc.Count; k++)
            {
                MonHoc mh = dsMonHoc[k];
                GiaoVien giaoVien = null;
                List<GiaoVien> dsGV_MH = GetDSGiaoVienTheoMonHoc(mh.MaMonHoc, dsGiaoVien);
                for (int i = 0; i < 7; i++) // 7days: from Monday to Sunday
                {
                    for (int j = tietDau; j < tietCuoi; j++)
                    {
                        if (arrTKB[i][j].MonHoc == null) // Còn trống
                        {
                            if (KiemTraMonHoc(arrTKB, mh, i, j))
                            {
                                ChiTietTKB ctTKB = new ChiTietTKB();
                                // Xếp giáo viên vào môn học ở ngày i tiết j
                                if ((giaoVien != null && KiemTraGiaoVien(lstTKB, arrTKB, giaoVien, mh.MaMonHoc, i, j)) || GetGiaoVien(lstTKB, arrTKB, dsGV_MH, mh.MaMonHoc, i, j, out giaoVien))
                                {
                                    ctTKB.ThoiKhoaBieu = tkb;
                                    ctTKB.MonHoc = mh;
                                    ctTKB.GiaoVien = giaoVien;
                                    ctTKB.Phong = phong;
                                    ctTKB.TietBatDau = j;
                                    ctTKB.TietKetThuc = j;
                                    ctTKB.Thu = i;
                                    tkb.ChiTietTKBs.Add(ctTKB);
                                    arrTKB[i][j].MonHoc = mh;
                                    arrTKB[i][j].GiaoVien = giaoVien;
                                    arrTKB[i][j].Phong = phong;
                                    arrTKB[i][j].TietBatDau = j;
                                    arrTKB[i][j].TietKetThuc = j;
                                    arrTKB[i][j].Thu = i;
                                }
                            }
                        }
                    }
                }
            }
            return tkb;
        }

        private List<GiaoVien> GetDSGiaoVienTheoMonHoc(int maMH, List<GiaoVien> dsGiaoVien)
        {
            List<GiaoVien> temp = new List<GiaoVien>();
            foreach (GiaoVien gv in dsGiaoVien)
            {
                if ((int)gv.MonHocReference.EntityKey.EntityKeyValues[0].Value == maMH)
                {
                    temp.Add(gv);
                }
            }
            return temp;
        }

        private bool KiemTraGiaoVien(List<ThoiKhoaBieu> lstTKB, List<List<ChiTietTKB>> arrTKB, GiaoVien giaoVien, int maMonHoc, int thu, int tiet)
        {
            if (tiet < 2 || (tiet >= 2 && (arrTKB[thu][tiet - 2].MonHoc == null || (arrTKB[thu][tiet - 2].MonHoc != null && arrTKB[thu][tiet - 2].MonHoc.MaMonHoc != maMonHoc))))
            {
                return KiemTraTKBLopKhac(lstTKB, giaoVien, thu, tiet, maMonHoc);
            }
            return false;
        }

        private bool KiemTraMonHoc(List<List<ChiTietTKB>> arrTKB, MonHoc mh, int thu, int tiet)
        {
            int dem = 0;
            for (int i = 0; i < arrTKB.Count; i++)
            {
                for (int j = 0; j < arrTKB[i].Count; j++)
                {
                    if (arrTKB[i][j].MonHoc != null && arrTKB[i][j].MonHoc.MaMonHoc == mh.MaMonHoc)
                        dem++;
                }
            }
            if (dem < mh.SoTiet && (tiet < 2 || (tiet >= 2 && (arrTKB[thu][tiet - 2].MonHoc == null || (arrTKB[thu][tiet - 2].MonHoc != null && arrTKB[thu][tiet - 2].MonHoc.MaMonHoc != mh.MaMonHoc)))))
            {
                try
                {
                    if (tiet >= 9 || (tiet < 9 && (arrTKB[thu][tiet + 2].MonHoc == null || (arrTKB[thu][tiet + 2].MonHoc != null && arrTKB[thu][tiet + 2].MonHoc.MaMonHoc != mh.MaMonHoc))))
                        return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
                return false;
            }
            return false;
        }

        private Phong GetPhong(ref List<Phong> dsPhong, int siSo)
        {
            Phong phong = new Phong();
            for (int i = 0; i < dsPhong.Count; i++)
            {
                if (dsPhong[i].TinhTrang.ToLower().Equals("trống") && dsPhong[i].SucChua >= siSo)
                {
                    phong = dsPhong[i];
                    break;
                }
            }
            dsPhong.Remove(phong);
            return phong;
        }

        private bool GetGiaoVien(List<ThoiKhoaBieu> lstTKB, List<List<ChiTietTKB>> arrTKB, List<GiaoVien> dsGiaoVien, int maMonHoc, int thu, int tiet, out GiaoVien giaoVien)
        {
            giaoVien = null;
            for (int i = 0; i < dsGiaoVien.Count; i++)
                if (dsGiaoVien[i].MonHoc != null && dsGiaoVien[i].MonHoc.MaMonHoc == maMonHoc)
                {
                    if (tiet < 2 || (tiet >= 2 && (arrTKB[thu][tiet - 2].MonHoc == null || (arrTKB[thu][tiet - 2].MonHoc != null && arrTKB[thu][tiet - 2].MonHoc.MaMonHoc != maMonHoc))))
                    {
                        if (tiet >= 9 || (tiet < 9 && (arrTKB[thu][tiet + 2].MonHoc == null || (arrTKB[thu][tiet + 2].MonHoc != null && arrTKB[thu][tiet + 2].MonHoc.MaMonHoc != maMonHoc))))
                        {
                            if (KiemTraTKBLopKhac(lstTKB, dsGiaoVien[i], thu, tiet, maMonHoc))
                            {
                                giaoVien = dsGiaoVien[i];
                                return true;
                            }
                        }
                    }
                }
            return false;
        }

        private bool KiemTraTKBLopKhac(List<ThoiKhoaBieu> lstTKB, GiaoVien giaoVien, int thu, int tiet, int maMonHoc)
        {
            for (int j = 0; j < lstTKB.Count; j++)
            {
                int newThu = thu;
                int newTiet = tiet;
                List<ChiTietTKB> chiTiets = lstTKB[j].MaTKB == 0 ? lstTKB[j].ChiTietTKBs.ToList() : GetDanhSachChiTietTKB(lstTKB[j].MaTKB);
                if (lstTKB[j].MaTKB != 0)
                {
                    newThu = thu + 2;
                    newTiet = tiet + 1;
                }
                for (int k = 0; k < chiTiets.Count; k++)
                {
                    ChiTietTKB ct = chiTiets[k];
                    if (ct.Thu == newThu && ct.TietBatDau == newTiet && (int)ct.MonHocReference.EntityKey.EntityKeyValues[0].Value == maMonHoc && (int)ct.GiaoVienReference.EntityKey.EntityKeyValues[0].Value == giaoVien.MaGiaoVien)
                        return false;
                }
            }
            return true;
        }
        #endregion
        /******************Quy Dinh******************/
        #region Quy dinh
        #endregion
    }
}