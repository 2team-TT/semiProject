<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- css 초기화 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" />

        <!-- 메타리얼 아이ㅇ콘 -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- 제이쿼리 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


        <link rel="stylesheet" href="./resources/css/household.css">
    </head>

    <body>

        <%@include file="../common/menubar.jsp" %>

            <section class="houseHold first">


                <div class="household_area">
                    <div class="title">가계부</div>


                    <div class="content_month">

                        <div class="total_area">
                            총 자산 <span class="total_amount dan"> </span>
                        </div>

                        <div class="month_branch">
                            <div class="branch"><span class="material-icons">dataset</span>1분기 <input type="hidden"
                                    value="1"></div>
                            <div class="branch"><span class="material-icons">dataset</span>2분기 <input type="hidden"
                                    value="2"></div>
                            <div class="branch"><span class="material-icons">dataset</span>3분기 <input type="hidden"
                                    value="3"></div>
                            <div class="branch"><span class="material-icons">dataset</span>4분기 <input type="hidden"
                                    value="4"></div>
                        </div>
                        <div class="month_body">


                            <div class="month_box month_box0">
                                <div class="month">월</div>
                                <div class="income">income : 원</div>
                                <div class="expenses">expenses : 원</div>
                                <div class="total dan">총 : 원</div>
                            </div>

                            <div class="month_box month_box1">
                                <div class="month">월</div>
                                <div class="income">income : 원</div>
                                <div class="expenses">expenses : 원</div>
                                <div class="total">총 : 원</div>
                            </div>

                            <div class="month_box month_box2">
                                <div class="month">월</div>
                                <div class="income">income : 원</div>
                                <div class="expenses">expenses : 원</div>
                                <div class="total">총 : 원</div>
                            </div>

                        </div>


                        <div class="body_content hidden">

                            <div class="income_content content_box">
                                <div class="content_title"><span
                                        class="material-icons insert_income add">add_circle_outline</span> <span
                                        class="date"></span> 소득</div>
                                <div class="cotent_input">
                                    <div class="total">원</div>
                                    <span class="material-icons insert_income insert" data-toggle="modal"
                                        data-target="#input_income">add_circle_outline</span>
                                </div>
                                <div class="content_data">
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                        <span class="material-icons">
                                            close
                                        </span>
                                    </div>
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                    <div class="data">
                                        <input type="hidden">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>

                                </div>

                            </div>

                            <div class="expenses_content content_box">
                                <div class="content_title"><span class="material-icons minus">
                                        remove_circle_outline
                                    </span> <span class="date"></span> 소득</div>
                                <div class="cotent_input">
                                    <div class="total">원</div>
                                    <span class="material-icons insert_expenses insert" data-toggle="modal"
                                        data-target="#input_expenses">add_circle_outline</span>
                                </div>
                                <div class="content_data">
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                    <div class="data">
                                        <span>2024/08/07</span>
                                        <span>태그</span>
                                        <span>월급</span>
                                        <span>1500원</span>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>





                </div>









            </section>


            <!-- The Modal -->
            <div class="modal household_modal" id="input_expenses">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">지출</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="input_wrapper">
                                <form action="<%=contextPath%>/insertexpenses.hh">
                                    <input type="hidden" value="<%=u.getUserNo()%>" name="userNo">
                                    <div>
                                        분류
                                        <select id="category_select" name="category">
                                            <option value=""></option>
                                        </select>
                                    </div>
                                    <div>날짜 <input type="date" name="date" required></div>
                                    <div>금액 <input type="number" name="amount" required></div>
                                    <div>설명 <input type="text" name="des" required></div>
                                    <div class="btn_box">
                                        <button class="house_insert_btn" type="submit">추가</button>
                                    </div>
                                </form>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

            </div>

            <!-- The Modal -->
            <div class="modal household_modal" id="input_income">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">소득</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="input_wrapper">
                                <form action="<%=contextPath%>/insertincome.hh">
                                    <input type="hidden" value="<%=u.getUserNo()%>" name="userNo">
                                    <div>
                                        분류
                                        <select id="category_select" name="category" required>
                                            <option value=""></option>
                                        </select>
                                    </div>
                                    <div>날짜 <input type="date" name="date" required> </div>
                                    <div>금액 <input type="number" name="amount" required></div>
                                    <div>설명 <input type="text" name="des" required></div>
                                    <div class="btn_box">
                                        <button class="house_insert_btn" type="submit">추가</button>
                                    </div>
                                </form>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

            </div>





            <script>
                $(function () {
                    totalAmount();

                    $('.month_branch>.branch:first-child').click()


                })



                function totalAmount() {
                    $.ajax({
                        url: "total.hh",
                        data: {
                            userNo: "<%=u.getUserNo()%>"
                        },
                        type: "get",
                        success: function (result) {
                            // console.log(result)

                            const str = result.substr(0, 1);
                            // console.log(str)
                            if (str === '-') {
                                $('.houseHold .total_area .total_amount').addClass('dan')
                            } else {
                                $('.houseHold .total_area .total_amount').removeClass('dan')
                            }
                            $('.houseHold .total_area .total_amount').text(result)

                        },
                        error: function () {
                            console.log('gg')
                        },
                    })
                }

                $('.month_branch>.branch').on('click', function () {
                    const input = $(this).children('input').val()
                    // console.log(input)
                    const year = new Date().getFullYear()
                    // console.log(year)

                    branchAmount(input, year)
                })






                function branchAmount(input, year) {
                    $.ajax({
                        url: "branch.hh",
                        data: {
                            userNo: "<%=u.getUserNo()%>",
                            branch: input,
                            year: year,
                        },
                        type: "get",
                        success: function (list) {

                            for (let i = 0; i < list.length; i++) {
                                let value = ""


                                if (list[i].total < 0) {
                                    value = "<div class='month'>" + list[i].date + "</div>"
                                        + "<div class='income'>income : " + list[i].income + "원</div>"
                                        + "<div class='expenses'>expenses : " + list[i].expenses + "원</div>"
                                        + "<div class='total dan'>총 : " + list[i].total + "원</div>"
                                } else {
                                    value = "<div class='month'>" + list[i].date + "</div>"
                                        + "<div class='income'>income : " + list[i].income + "원</div>"
                                        + "<div class='expenses'>expenses : " + list[i].expenses + "원</div>"
                                        + "<div class='total'>총 : " + list[i].total + "원</div>"
                                }

                                $('.month_box' + i).html(value)
                            }



                        },
                        error: function () {
                            console.log('gg')
                        },
                    })
                }




                $('.month_box').on('click', function () {
                    const date = $(this).children('.month').text()
                    // console.log(date)
                    $('.body_content').removeClass('hidden')
                    selectIncome(date)
                    selectExpenses(date)
                })


                function selectIncome(date) {
                    $.ajax({
                        url: "selectIncome.hh",
                        data: {
                            userNo: "<%=u.getUserNo()%>",
                            date: date,
                        },
                        type: "get",
                        success: function (list) {
                            // console.log(list)
                            let value = ""
                            let total = 0
                            for (let i = 0; i < list.length; i++) {
                                value += "<div class='data'>"
                                    + "<span>" + list[i].inDate + "</span>"
                                    + "<span>" + list[i].category + "</span>"
                                    + "<span>" + list[i].inDes + "</span>"
                                    + "<span>" + list[i].inAmount + "원</span>"
                                    + "<span class='material-icons delelte_income'>"
                                    + "close"
                                    + "<input type='hidden' class='num' value=" + list[i].inNo + ">"
                                    + "<input type='hidden' class='day' value=" + list[i].inDate + ">"
                                    + "</span>"

                                    + "</div>"


                                total += list[i].inAmount

                            }
                            // console.log(total)
                            $('.income_content .content_data').html(value)
                            $('.income_content .total').text(total + " 원")
                            $('.income_content .date').text(date)


                            $('.delelte_income').on('click', function () {
                                const num = $(this).children('.num').val()
                                const day = $(this).children('.day').val()
                                const arr1 = day.split('/')
                                // console.log(arr1)
                                const str = arr1[1].substr(0, 1)
                                let date = ""
                                if (str === "0") {
                                    date = arr1[0] + '-' + arr1[1].substr(1)

                                } else {
                                    date = arr1[0] + "-" + arr1[1]
                                }
                                // console.log(date)


                                // console.log(num)
                                deleteincome(num, date)
                            })
                        },
                        error: function () { },

                    })



                }


                function selectExpenses(date) {
                    $.ajax({
                        url: "selectExpenses.hh",
                        data: {
                            userNo: "<%=u.getUserNo()%>",
                            date: date,
                        },
                        type: "get",
                        success: function (list) {
                            // console.log(list)
                            let value = ""
                            let total = 0
                            for (let i = 0; i < list.length; i++) {
                                value += "<div class='data'>"
                                    + "<span>" + list[i].outDate + "</span>"
                                    + "<span>" + list[i].category + "</span>"
                                    + "<span>" + list[i].outDes + "</span>"
                                    + "<span>" + list[i].outAmount + "원</span>"
                                    + "<span class='material-icons delelte_expneses'>"
                                    + "close"
                                    + "<input type='hidden' class='num' value=" + list[i].outNo + ">"
                                    + "<input type='hidden' class='day' value=" + list[i].outDate + ">"
                                    + "</span>"

                                    + "</div>"

                                total += list[i].outAmount

                            }
                            // console.log(total)
                            $('.expenses_content .content_data').html(value)
                            $('.expenses_content .total').text(total + " 원")
                            $('.expenses_content .date').text(date)




                            $('.delelte_expneses').on('click', function () {
                                const num = $(this).children('.num').val()
                                const day = $(this).children('.day').val()
                                const arr1 = day.split('/')
                                // console.log(arr1)
                                const str = arr1[1].substr(0, 1)
                                let date = ""
                                if (str === "0") {
                                    date = arr1[0] + '-' + arr1[1].substr(1)

                                } else {
                                    date = arr1[0] + "-" + arr1[1]
                                }
                                // console.log(date)
                                // console.log(num)

                                deleteiexpenses(num, date)
                            })


                        },
                        error: function () { },

                    })



                }


                $('#input_income').on('show.bs.modal', function () {
                    categoryList()
                })


                $('#input_expenses').on('show.bs.modal', function () {
                    categoryList()
                })


                function categoryList(num, day) {
                    $.ajax({
                        url: "categoryList.hh",
                        success: (list) => {
                            // console.log(list)
                            let value = ""
                            for (let i = 0; i < list.length; i++) {
                                value += "<option value=" + list[i].categoryNo + ">" + list[i].categoryName + "</option>";
                            }
                            console.log(value)
                            $('.modal.household_modal #category_select').html(value)

                        },
                        error: () => { }
                    })
                }



                function deleteincome(num, day) {
                    $.ajax({
                        url: "deleteincome.hh",
                        data: {
                            no: num,
                        },
                        type: 'get',
                        success: function (result) {

                            if (result === "yyyyy") {
                                totalAmount()
                                selectIncome(day)

                            } else if (result === "nnnnn") {
                                alert('삭제에 실패했습니다.')
                            }

                        },
                        error: function () {

                        }
                    })
                }


                function deleteiexpenses(num, day) {
                    $.ajax({
                        url: "deleteiexpenses.hh",
                        data: {
                            no: num,
                        },
                        type: 'get',
                        success: function (result) {
                            if (result === "yyyyy") {
                                totalAmount()
                                selectExpenses(day)
                            } else if (result === "nnnnn") {
                                alert('삭제에 실패했습니다.')
                            }
                        },
                        error: function () {

                        }
                    })
                }



            </script>









    </body>

    </html>