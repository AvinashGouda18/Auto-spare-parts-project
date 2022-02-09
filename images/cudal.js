
function validatetext(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length <= 2) {
                arguments.IsValid = false;
            }
            else {
                arguments.IsValid = true;
            }
        }
        
function validatelicenceno(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length == 6) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }
        
        
 function validatecardnumber(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length == 16) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }
        


        
function validatemobileno(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length == 10) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }

function validatepincode(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length == 6) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }
        
function validatecardno(source, arguments) {
            arguments.IsValid = false;
            if (!(isNaN(arguments.Value))) {
                arguments.IsValid = true;
            }
            if (arguments.Value.length == 16) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }
                
function validateemail(sender, args) {
            if (args.Value == "") {
                args.IsValid = false;
            }
            else {
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (!filter.test(args.Value)) {
                    args.IsValid = false;
                }
            }
        }  
        
function validatpassword(sender, args) {
            if (args.Value == "") {
                args.IsValid = false;
            }
            else {
                var filter = /^([a-zA-Z0-9]{5,10})$/;
                if (!filter.test(args.Value)) {
                    args.IsValid = false;
                }
            }
        }  


function validatindianmobileno(sender, args) {
            if (args.Value == "") {
                args.IsValid = false;
            }
            else {
                var filter = /^[6789]\d{9}$/;
                if (!filter.test(args.Value)) {
                    args.IsValid = false;
                }
            }
        }  

function max() 
{ 
var obj = new ActiveXObject("Wscript.shell"); 
obj.sendkeys("{f11}"); 
} 
function NumberOnly()
        {
           var AsciiValue=event.keyCode
            
            if((AsciiValue>=48 && AsciiValue<=57) || (AsciiValue==8 || AsciiValue==127))
                event.returnValue=true;
            else
                event.returnValue=false;
        }

function AlphaOnly()
        {
           var AsciiValue=event.keyCode
            
            if((AsciiValue>=48 && AsciiValue<=57) || (AsciiValue==8 || AsciiValue==127))
                event.returnValue=false;
            else
                event.returnValue=true;
        }
        
        
        function AlphaOnlyWithoutSymbol()
        {
           var AsciiValue=event.keyCode
            
            if((AsciiValue>=65 && AsciiValue<=90)  || (AsciiValue>=97 && AsciiValue<=122) || (AsciiValue>=48 && AsciiValue<=57)) 
                event.returnValue=true;
            else
                event.returnValue=false;
        }
        
        
        function AlphaOnlyWithoutSymbolNumber()
        {
           var AsciiValue=event.keyCode
            
            if((AsciiValue>=65 && AsciiValue<=90)  || (AsciiValue>=97 && AsciiValue<=122) || (AsciiValue==32) || (AsciiValue==46) ) 
                event.returnValue=true;
            else
                event.returnValue=false;
        }
        
function nothing()
        {
           var AsciiValue=event.keyCode
            
            if((AsciiValue>=48 && AsciiValue<=57) || (AsciiValue==8 || AsciiValue==127))
                event.returnValue=false;
            else
                event.returnValue=false;
        }