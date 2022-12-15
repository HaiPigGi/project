document.addEventListener("click",listen()); 
function Konfirmasi () {
var teks=encodeURI("Gimana Cerita Hubungan Kalian ? ");
if (confirm("Ingin Melanjutkan ? ")==true) {   
    isi=document.write( "<a href='https://wa.me/6285349517204?text=Haii!!! " + teks + "' class='tombol_contact_us'><img src='wa.jpg'></a>"); 
     window.alert("Lets Gooo");
} else  {
    window.alert("Dibatalkan");
    return closeWindow(); 
}
}
function Konfirmasi2 () {
    var teks=encodeURI("Gimana Cerita Hubungan Kalian ? ");
    if (confirm("ingin Melanjutkan ? "==true)) {
        isi=document.write( "<a href='https://wa.me/6285349517204?text=Haii!!! " + teks + "' class='tombol_contact_us'><img src='wa.jpg'></a>"); 
        window.alert("Lets Gooo ");
    } else {
        windows.alert("Dibatalkan");
        return closeWindow();
    }
}
function ceritaChella() {

}
function ceritaGloo() {
    
}
function closeWindow() {
window.location="D:\Random web\index.html";    
}
function listen (event) {
    if (event.fullscreen) {

    }

}