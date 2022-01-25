<!-- footer start -->
<footer class="footer-area" id="footer">
    <div class="container">
        <div class="row">
            <div class="footer-logo">
                <img src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/logo-green.png" alt="logo-green">
            </div>
        </div>
        <div class="row">
            <div class="social-icons">
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
            </div>
        </div>
        <div class="row">
            <div class="footer-tabs">
                <a href="#">home</a> |
                <a href="#">how it works</a> |
                <a href="#">blog</a>
            </div>
        </div>
        <div class="row">
            <div class="footer-copyright">
                Copyright@2018Ezlyn.All Right Reserved    Articals  News  design by DesignDot
            </div>
        </div>
    </div>
</footer>
<!-- footer end -->

<script type="text/javascript">
    function refine(ele){
        var stringer = $(ele).val();
        stringer = stringer.toLowerCase();
        var max = stringer.match(phone_exp);
        $.each(rude_exp, function( index, rude_expVAL ) {
            if (stringer.indexOf(rude_expVAL)>-1) {
                swal("Error !", "Invalid words detected !", "error");
                $(ele).val('');
                return false;
            }
        });
        if (max) {
            $(ele).val('');
            swal("Error !", "No Communication Details Allowed", "error");
            return false;
        }
    }
</script>