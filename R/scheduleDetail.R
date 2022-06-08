



#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' scheduleDetailFunc_left()
scheduleDetailFunc_left<- function() {

  res <- tagList(

    tsui::mdl_dateRange(id = 'dtscheduleDetail_dates',label = '排产起止日期范围'),
    tsui::layout_2C(x = tsui::mdl_text2(id = 'txtscheduleDetail_FCompanyName',label = '公司',value = ''),
                    y=tsui::mdl_text2(id = 'txtscheduleDetail_FWorkShop',label = '生产车间',value = '')),
    tsui::layout_2C(x = tsui::mdl_text2(id = 'txtscheduleDetail_FRouteName',label = '工序',value = ''),
                    y=tsui::mdl_text2(id = 'txtscheduleDetail_FPrdSeries',label = '产品系列',value = '')),
    tsui::layout_2C(x = tsui::mdl_text2(id = 'txtscheduleDetail_FPrdNumber_start',label = '开始产品代码',value = '802685'),
                    y=tsui::mdl_text2(id = 'txtscheduleDetail_FPrdNumber_end',label = '结束产品代码',value = '802685')),
    tsui::layout_2C(x =tsui::mdl_text2(id = 'txtscheduleDetail_FMoNumber_start',label = '开始生产订单编号',value = 'MO202204499')
                    ,y=tsui::mdl_text2(id = 'txtscheduleDetail_FMoNumber_end',label = '结束生产订单编号',value = 'MO202204499')
                    )  ,
    tsui::layout_2C(x=tsui::mdl_text2(id = 'txtscheduleDetail_FMachineNumber_start',label = '开始机台编号',value = '4#'),
                    y= tsui::mdl_text2(id = 'txtscheduleDetail_FMachineNumber_end',label = '结束机台编号',value = '4#'))  ,


    hr(),
    tsui::layout_4C(x=shinyWidgets::actionBttn(inputId = 'btnscheduleDetail_query',label = '查看'),
                    y=tsui::mdl_download_button(id = 'btnscheduleDetail_dl',label = '下载'),z='',i = ''),

    hr(),
    tsui::uiTemplate(templateName = '生产订单排产信息表模板'),
    br(),
    tsui::mdl_file(id = 'filescheduleDetail_upload',label = '请选择需要生产订单排产信息表EXCEL文件'),

    shiny::actionButton(inputId = 'btnscheduleDetail_upload',label = '上传至服务器')
  )
  return(res)

}






#' 请输入文件
#'
#' @return 返回值
#' @import tsui
#' @import shiny
#'
#' @examples
#' scheduleDetailFunc_right()
scheduleDetailFunc_right<- function() {
  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'dataviewscheduleDetail_query',label = '生产订单排产信息表'))
  )
  return(res)

}

#' 生产订单排产信息明细表
#'
#' @param tabTitle 标题
#' @param com_left 左
#' @param com_right 右
#'
#' @return 返回值
#' @export
#'
#' @examples
#' scheduleDetailUI()
scheduleDetailUI <- function(tabTitle ='生产订单排产明细表',
                       colTitles =c('操作区域','报表区域'),
                       widthRates =c(5,7),
                       func_left = scheduleDetailFunc_left,
                       func_right =scheduleDetailFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}

