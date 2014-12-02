!function ($) {
    var CustomFileInput = function (content, options) {
        var self = this;
        this.$element = $(content);
        this.options = $.extend({
            classes: (this.$element.attr('class') ? this.$element.attr('class') : ''),
        }, options);
        this.$upload = $('<div class="input-' + (('right' === this.options.button_position) ? 'append' : 'prepend') + ' customfile">');
        this.$uploadFeedback = $('<input type="text" readonly="readonly" class="customfile-feedback ' + this.options.classes + '" value="' + this.options.feedback_text + '"/>').appendTo(this.$upload);
        this.$element
            .addClass('customfile-input')        
            .on('change', $.proxy(this.onChange, this))
        if (this.$element.is('[disabled]')) {
            this.$element.trigger('disable');
        } else {
            this.$upload.on('click', function () { self.$element.trigger('click'); });
        }
        this.$upload.insertAfter(this.$element);
        this.$element.insertAfter(this.$upload);
    };

    CustomFileInput.prototype = {
        constructor: CustomFileInput,        
        onChange: function () {
            var filenames = [];
            $.each(this.$element.prop("files"), function (k, v) {
                filenames.push(v['name']);
            });
            this.$uploadFeedback.val(filenames.length + "个文件已选").addClass('customfile-feedback-populated');
            this.$element.data('val', filenames);
        }
    };
    $.fn.customFileInput = function (option) {
        return this.each(function () {
            var $this = $(this);
            var data = $this.data('customFileInput')
            var options = $.extend({}, $.fn.customFileInput.defaults, $this.data(), typeof option == 'object' && option);
            if (!data) {
                $this.data('customFileInput', (data = new CustomFileInput(this, options)));
            }
        })
    };
    $.fn.customFileInput.defaults = {
        button_position: 'right',
        feedback_text: '请选择...',
        button_text: '浏览',
        button_change_text: '更换'
    }

}(window.jQuery);

