<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    <?php echo lang('clas_add_class'); ?> <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('home'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_class'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_class'); ?>
                    </li>
                    <li id="result" class="pull-right topClock"></li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12 ">
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet box green ">
                    <div class="portlet-title">
                        <div class="caption">
                            <?php echo lang('clas_add_tab_tit'); ?>
                        </div>
                        <div class="tools">
                            <a href="" class="collapse">
                            </a>
                            <a href="" class="reload">
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <?php $form_attributs = array('class' => 'form-horizontal', 'role' => 'form');
                        echo form_open('sclass/addClass', $form_attributs);
                        ?>
                            <div class="form-body">

                                <div class="form-group">
                                    <label class="col-md-3 control-label"> <?php echo lang('clas_class_title'); ?> <span class="requiredStar"> * </span></label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="<?php echo lang('clas_title_plash'); ?>" name="class_title" data-validation="required" data-validation-error-msg="<?php echo lang('clas_cls_tit_requi'); ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> <?php echo lang('clas_group'); ?> <span class="requiredStar"> </span></label>
                                    <div class="col-md-6">
                                        <div id="div_scents">
                                            <select name="group" class="form-control"  data-validation="required" data-validation-error-msg="Select the group level first.">
                                            <option value=""><?php echo lang('select'); ?></option>
                                            <option value="Play-Group">Play-Group</option>
                                            <option value="Pre-Primary Group">Pre-Primary Group</option>
                                            <option value="Primary Group">Primary Group</option>
                                            <option value="Junior Secondary School">Junior Secondary School</option>
                                            <option value="Senior Secondary School">Senior Secondary School</option>
                                            <option value="Higher Education">Higher Education</option>
                                           </select>
                                        </div>
                                       <!--- <button id="addGroup" class="btn green-meadow floatRight" type="button"><?php echo lang('clas_add_group'); ?></button>----->
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label"> <?php echo lang('clas_section'); ?> <span class="requiredStar">  </span></label>
                                    <div class="col-md-6">
                                        <div id="section_div">
                                            <input type="text" name="section" class="form-control classGroupInput" placeholder="">
                                        </div>
                                        <button id="addSection" class="btn green-meadow floatRight" type="button"><?php echo lang('clas_add_section'); ?></button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"><?php echo lang('clas_sec_capaci'); ?><span class="requiredStar"> * </span></label>
                                    <div class="col-md-6">
                                    <input type="number" name="capicity" class="form-control classGroupInput" placeholder="Students in the stream.">
                                     </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> <?php echo lang('clas_code'); ?> <span class="requiredStar"> * </span></label>
                                    <div class="col-md-6">
                                        <input type="number" onkeyup="classSection(this.value)" class="form-control" placeholder="<?php echo lang('clas_code_plash'); ?>"  data-validation="required" data-validation-error-msg="<?php echo lang('clas_code_requir'); ?>">
                                        <span id="ajaxResult" class="classCodeCheck"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions fluid">
                                <div class="col-md-offset-3 col-md-6">
                                    <button type="submit" name="submit" class="btn green" value="Add Class"><?php echo lang('clas_add_butt'); ?></button>
                                    <button type="reset" class="btn default"><?php echo lang('refresh'); ?></button>
                                </div>
                            </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
                <!-- END SAMPLE FORM PORTLET-->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->
<script>
    $(function() {
        var maxFild = 3;
        var scntDiv = $('#div_scents');
        var i = $('#div_scents').size() + 1;

        var x = 1;
        $('#addGroup').live('click', function() {
            if (x < maxFild) {
                x++;
                $('<div id="remove" class="addGroupMarginBottom"><input type="text" name="group_' + i + '" class="form-control" placeholder="Students in the stream."> <a href="#" id="remGroup">Remove</a></div>').appendTo(scntDiv);
                i++;
                return false;
            }
        });

        $('#remGroup').live('click', function() {
            if (i > 2) {
                $(this).parents('#remove').remove();
                i--;
                x--;
            }
            return false;
        });
    });

    $(function() {
        var maxFild = 5;
        var scntDiv = $('#section_div');
        var i = $('#section_div').size() + 1;

        var x = 1;
        $('#addSection').live('click', function() {
            if (x < maxFild) {
                x++;
                $('<div id="remove2" class="addGroupMarginBottom"><input type="text" name="section_' + i + '" class="form-control" placeholder="Section title here"> <a href="#" id="remSection">Remove</a></div>').appendTo(scntDiv);
                i++;
                return false;
            }
        });

        $('#remSection').live('click', function() {
            if (i > 2) {
                $(this).parents('#remove2').remove();
                i--;
                x--;
            }
            return false;
        });
    });

    jQuery(document).ready(function() {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function() {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
    });

    function classSection(str) {
        var xmlhttp;
        if (str.length === 0) {
            document.getElementById("ajaxResult").innerHTML = "";
            return;
        }
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                document.getElementById("ajaxResult").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "index.php/sclass/ajaxClassCodeInfo?q=" + str, true);
        xmlhttp.send();
    }
</script>
<script src="assets/global/plugins/jquery.form-validator.min.js" type="text/javascript"></script>
<script> $.validate(); </script>