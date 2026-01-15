<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-ovesio-ecommerce" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="alert alert-warning"><i class="fa fa-exclamation-triangle"></i> <?php echo $text_warning_hash; ?></div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-ovesio-ecommerce" class="form-horizontal">
          <input type="hidden" name="ovesio_ecommerce_hash" value="<?php echo $ovesio_ecommerce_hash; ?>" />

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="ovesio_ecommerce_status" id="input-status" class="form-control">
                <?php if ($ovesio_ecommerce_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-export-duration"><?php echo $entry_export_duration; ?></label>
            <div class="col-sm-10">
              <select name="ovesio_ecommerce_export_duration" id="input-export-duration" class="form-control">
                <?php if ($ovesio_ecommerce_export_duration == 24) { ?>
                <option value="12"><?php echo $option_12_months; ?></option>
                <option value="24" selected="selected"><?php echo $option_24_months; ?></option>
                <?php } else { ?>
                <option value="12" selected="selected"><?php echo $option_12_months; ?></option>
                <option value="24"><?php echo $option_24_months; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <fieldset>
            <legend><?php echo $text_instructions; ?></legend>
            <div class="alert alert-info">
                <?php echo $text_help_signup; ?>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_product_feed; ?></label>
                <div class="col-sm-10">
                    <div class="input-group">
                        <input type="text" value="<?php echo $product_feed_url; ?>" class="form-control" readonly id="product-feed-url" />
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="copyToClipboard('product-feed-url')"><i class="fa fa-copy"></i></button>
                        </span>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_order_feed; ?></label>
                <div class="col-sm-10">
                    <div class="input-group">
                        <input type="text" value="<?php echo $order_feed_url; ?>" class="form-control" readonly id="order-feed-url" />
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="copyToClipboard('order-feed-url')"><i class="fa fa-copy"></i></button>
                        </span>
                    </div>
                </div>
            </div>
          </fieldset>

        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function copyToClipboard(elementId) {
  var copyText = document.getElementById(elementId);
  copyText.select();
  copyText.setSelectionRange(0, 99999); /* For mobile devices */
  document.execCommand("copy");
//   alert("Copied the feed URL: " + copyText.value);
}
//--></script>
<?php echo $footer; ?>
