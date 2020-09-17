$(function () {

    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "選択してください");


    $("#nameForm").validate({
        rules: {
            todohuken: {
                valueNotEquals: "msg"
            },
            first_name: {
                required: true,
                maxlength: 50,
            },
            last_name: {
                required: true,
                maxlength: 50,
            },
            attendance: {
                required: true,
                number: true,
                digits:true,
                min: 1,
            },
        },
        messages: {
            todohuken: {
                equalTo: "選択してください"
            },
            first_name: {
                required: "必須項目です",
                maxlength: "50文字以下で入力してください"
            },
            last_name: {
                required: "必須項目です",
                maxlength: "50文字以下で入力してください"
            },
            attendance: {
                required: "必須項目です",
                number: "数字のみ入力してください",
                digits: "正整数のみ入力してください",
                min: "正整数のみ入力してください"
            },
        },
        errorClass: "error_msg",
        wrapper: "li"
    });

    ((prefecture) => {
        prefecture.forEach((name) => {
            $("#todohuken").append(`<option value="${name}" class="msg">${name}</option>`);
        });
    })(
        [
            '北海道',
            '青森県', '岩手県', '宮城県', '秋田県', '山形県', '福島県',
            '茨城県', '栃木県', '群馬県', '埼玉県', '千葉県', '東京都', '神奈川県',
            '新潟県', '富山県', '石川県', '福井県', '山梨県', '長野県', '岐阜県', '静岡県', '愛知県',
            '三重県', '滋賀県', '京都府', '大阪府', '兵庫県', '奈良県', '和歌山県',
            '鳥取県', '島根県', '岡山県', '広島県', '山口県',
            '徳島県', '香川県', '愛媛県', '高知県',
            '福岡県', '佐賀県', '長崎県', '熊本県', '大分県', '宮崎県', '鹿児島県',
            '沖縄県'
        ]
    );
});
