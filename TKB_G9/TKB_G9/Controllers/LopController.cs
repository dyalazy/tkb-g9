﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TKB_G9.Controllers
{
    public class LopController : Controller
    {
        //
        // GET: /Lop/
         [HttpPost]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DanhSachLop()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            G9Service.Lop[] list = sv.GetDanhSachLop();

            if (list==null || list.Count()<=0)
            {
                ViewData["DSLop"] = "Không có lớp";
                return View();
            }

            string temp = "";

            for (int j = 10; j <= 12; j++)
            {
                temp += "<h1 style='padding:10px 0px;'>KHỐI "+j+"</h1>";
                temp += "<div class=\"user-tlb\">";
                temp += "    <ul style=\"list-style: none\">";
                temp += "        <li class=\"hder\">";
                temp += "            <ul>";
                temp += "                <li class=\"stt\">STT</li>";
                temp += "                <li class=\"account_name\">Lớp</li>";
                temp += "                <li class=\"user_type\">Khối</li>";
                temp += "                <li class=\"active\">Sỉ số</li>";
                temp += "                <li class=\"edit\">Thao tác</li>";
                temp += "            </ul>";
                temp += "        </li>";
                int i = 1;
                foreach (G9Service.Lop lop in list)
                {
                    if (lop.KhoiLop == j.ToString())
                    {
                        temp += "    <li class=\"li-atv fl\">";
                        temp += "        <ul>";
                        temp += "            <li class=\"stt\">" + i + "</li>";
                        temp += "            <li class=\"account_name\">" + lop.TenLop + "</li>";
                        temp += "            <li class=\"user_type\">" + lop.KhoiLop + "</li>";
                        temp += "            <li class=\"active\">" + lop.SiSo + "</li>";
                        temp += "            <li class=\"edit\"><div style='padding-left:20px;'><a href='" + Url.Content("~/Lop/CapNhatLop?id=" + lop.MaLop) + "'><div class='btnEdit'></div></a>";
                        temp += "            <a href='" + Url.Content("~/Lop/XoaLop?id=" + lop.MaLop) + "'><div style='margin-left:5px;' class='btnXoa'></div></a></div></li>";
                        temp += "        </ul>";
                        temp += "    </li>";
                        i++;
                    }
                }
                temp += "</ul>";
                temp += "</div><br />";
            }

            ViewData["DSLop"] = temp;
            return View();
        }
        public ActionResult ThemLop()
        {
            ViewData["DSLop"] = "";
            return View();
        }
        public ActionResult CapNhatLop()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachLop", "Lop");
            }
            if(HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachLop", "Lop");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            G9Service.Lop lop = ws.GetLop(id);

            ViewData["MaLop"] = id;
            ViewData["TenLop"] = lop.TenLop;
            ViewData["Khoi"] = "";
            for(int i=10; i<=12; i++)
            {
                if(i == Int32.Parse(lop.KhoiLop))
                    ViewData["Khoi"] += "<option id='Option'" + i + " selected value='" + lop.KhoiLop + "' >" + lop.KhoiLop + "</option>";
                else
                    ViewData["Khoi"] += "<option id='Option'" + i + " value='" + lop.KhoiLop + "' >" + lop.KhoiLop + "</option>";
            }

            ViewData["CaHoc"] = "";
            if (lop.CaHoc.Equals("Sáng"))
            {
                ViewData["CaHoc"] += "<option id='Option' selected value='Sáng' >Sáng</option>";
                ViewData["CaHoc"] += "<option id='Option' value='Chiều' >Chiều</option>";
            }
            else
            {
                ViewData["CaHoc"] += "<option id='Option' value='Sáng' >Sáng</option>";
                ViewData["CaHoc"] += "<option id='Option' selected value='Chiều' >Chiều</option>";
            }

            ViewData["SiSo"] = lop.SiSo;
            ViewData["GhiChu"] = lop.GhiChu;

            return View();
        }

        [HttpPost]
        public ActionResult CapNhatLopPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachLop", "Lop");
            }
            G9Service.Lop lop = new G9Service.Lop();
            lop.MaLop = Int32.Parse(HttpContext.Request["txtMaLop"]);
            lop.TenLop = HttpContext.Request["txtTenLop"];
            lop.KhoiLop = HttpContext.Request["cbKhoi"];
            lop.CaHoc = HttpContext.Request["cbCaHoc"];
            lop.SiSo = Int32.Parse(HttpContext.Request["txtSiSo"]);
            lop.GhiChu = HttpContext.Request["txtGhiChu"];

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.CapNhatLop(lop);

            return (result == true) ? RedirectToAction("DanhSachLop", "Lop") : RedirectToAction("CapNhatLop", "Lop");
        }

        [HttpPost]
        public ActionResult ThemLopPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachLop", "Lop");
            }
            G9Service.Lop lop = new G9Service.Lop();
            lop.TenLop = HttpContext.Request["txtTenLop"];
            lop.KhoiLop = HttpContext.Request["cbKhoi"];
            lop.CaHoc = HttpContext.Request["cbCaHoc"];
            lop.SiSo = Int32.Parse(HttpContext.Request["txtSiSo"]);
            lop.GhiChu = HttpContext.Request["txtGhiChu"];

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.ThemLop(lop);

            return (result==true) ? RedirectToAction("DanhSachLop", "Lop") : RedirectToAction("ThemLop", "Lop");
        }

        public ActionResult XoaLop()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachLop", "Lop");
            }
            if (HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachLop", "Lop");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.XoaLop(id);
            
            return RedirectToAction("DanhSachLop", "Lop");
        }
    }
}
