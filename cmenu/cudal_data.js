fixMozillaZIndex=true; //Fixes Z-Index problem  with Mozilla browsers but causes odd scrolling problem, toggle to see if it helps
_menuCloseDelay=500;
_menuOpenDelay=150;
_subOffsetTop=2;
_subOffsetLeft=-2;



function popup(mylink, windowname)
{
if (! window.focus)return true;
var href;
if (typeof(mylink) == 'string')
   href=mylink;
else
   href=mylink.href;
window.open(href, windowname, 'width=700,height=420,scrollbars=yes');
return false;
}



with(menuStyle=new mm_style()){
bordercolor="#296488";
borderstyle="solid";
borderwidth=0;
fontfamily="Verdana, Tahoma, Arial";
fontsize="120%";
fontstyle="normal";
headerbgcolor="#ffffff";
headercolor="#000000";
//offbgcolor="#800000";
offcolor="#ffffff";
//onbgcolor="#4F8EB6";
oncolor="#F37C1E";
outfilter="randomdissolve(duration=0.3)";
overfilter="Fade(duration=0.2);Alpha(opacity=90);Shadow(color=#777777', Direction=135, Strength=5)";
padding=5;
pagebgcolor="#333333";
pagecolor="black";
separatorcolor="#D5D5D5";//"#2D729D";
separatorsize=1;
//subimage="http://img.milonic.com/arrow.gif";
subimagepadding=2;
}
//        
with(milonic=new menuname("Main Menu"))
{
alwaysvisible=1;
//left=10;
orientation="horizontal";//horizontal
style=menuStyle;
//top=210;residencial
aI("text=Home;url=contractorhome.aspx;");
aI("text=Apply Tender;url=applytender.aspx;");
aI("text=Bid Tender;url=bidtender.aspx;");
aI("text=Tender Report;url=careport.aspx;");
aI("text=Award Tender Report;url=caward.aspx;");
aI("text=Logout;url=logout.aspx;");


////aI("showmenu=admin;text=Admin;");
////aI("text=Gallery;url=gallery.aspx;");
////frmuser.aspx
//aI("text=e-Property Buildings;url=frmuser.aspx;");

////aI("showmenu=Residencial;text=Residencial;");
////aI("showmenu=Commercial;text=Commercial;");
//aI("text=Post Add;url=shell.aspx;");
//aI("text=Modify Add;url=modifyshell.aspx;");

//aI("text=Post Add;url=shell.aspx;");
//aI("text=View Add;url=newsearch.aspx;");
//aI("text=Contact us;url=frmaboutep.aspx;");
//aI("text=Feedback;url=frmFeedback.aspx;");
//aI("text=Faqs;url=faq.aspx;");


}


with(milonic=new menuname("admin")){
style=menuStyle;
aI("text=:: -> Login;url=default.aspx;");
aI("text=:: -> Category;url=addCategory.aspx;");

}


with(milonic=new menuname("Residencial")){
style=menuStyle;
aI("text=:: -> 2 BHK;url=2bhk.aspx;");
aI("text=:: -> 3 BHK;url=3bhk.aspx;");
}


with(milonic=new menuname("Commercial")){
style=menuStyle;
aI("text=:: -> Conference;url=conference.aspx;");
aI("text=:: -> Restaurants;url=hotel.aspx;");
aI("text=:: -> Office;url=office.aspx;");
}


with(milonic=new menuname("property")){
style=menuStyle;
aI("text=:: -> Mobile;url=sambuy.aspx;");
aI("text=:: -> Laptop;url=laptopbuy.aspx;");
//aI("text=:: -> 2HK;url=trackstudent.aspx;");
//aI("text=:: -> 3BHK;url=buy.aspx;");
}

with(milonic=new menuname("college")){
style=menuStyle;
aI("text=:: -> Add College;url=addcollege.aspx;");
aI("text=:: -> Update College;url=modifycollege.aspx;");
aI("text=:: -> Find College;url=trackcollege.aspx;");
aI("text=:: -> Delete College;url=deletecollege.aspx;");
}


with(milonic=new menuname("provider")){
style=menuStyle;
aI("text=Add Provider;url=frmAddprovider.aspx;");
aI("text=Update Provider;url=frmUpdateprovider.aspx;");
aI("text=Track Provider;url=frmTrackprovider.aspx;");
aI("text=Delete Provider;url=frmDeleteprovider.aspx;");
}



with(milonic=new menuname("products")){
style=menuStyle;
aI("text=Add Product;url=frmAddProduct.aspx;");
aI("text=Update Product;url=frmUpdateProduct.aspx;");
aI("text=Track Product;url=frmTrackProduct.aspx;");
aI("text=Delete Product;url=frmDeleteProduct.aspx;");
}


with(milonic=new menuname("reports")){
style=menuStyle;
aI("text=Customer Report;url=frmCustomerReport.aspx;");
aI("text=Product Report Report;url=frmProductReport.aspx;");
                                                                                                                    //aI("text=Stock Report;url=frmStockReport.aspx;");/
                                                                                                                                            //aI("text=Sales Report;url=frmSalesReport.aspx;");
}

drawMenus();
