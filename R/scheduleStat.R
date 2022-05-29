



#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' scheduleStatFunc_left()
scheduleStatFunc_left<- function() {

  res <- tagList(
     tsui::mdl_text2(id = 'txtscheduleStat_FPrdNumber_start',label = '开始产品代码',value = '801203-99'),
     tsui::mdl_text2(id = 'txtscheduleStat_FPrdNumber_end',label = '结束产品代码',value = '801203-99'),
     tsui::mdl_text2(id = 'txtscheduleStat_FMoNumber',label = '生产订单编号',value = 'MO202204665'),
     hr(),
     tsui::layout_2C(shinyWidgets::actionBttn(inputId = 'btnscheduleStat_query',label = '查看'),
                     tsui::mdl_download_button(id = 'btnscheduleStat_dl',label = '下载')),


    br(),
    hr()

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
#' scheduleStatFunc_right()
scheduleStatFunc_right<- function() {
  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'dataviewscheduleStat_query',label = '生产订单排产统计表'))
  )
  return(res)

}

#' 产品分组UI
#'
#' @param tabTitle 标题
#' @param com_left 左
#' @param com_right 右
#'
#' @return 返回值
#' @export
#'
#' @examples
#' scheduleStatUI()
scheduleStatUI <- function(tabTitle ='生产订单排产统计表',
                       colTitles =c('操作区域','报表区域'),
                       widthRates =c(4,8),
                       func_left = scheduleStatFunc_left,
                       func_right =scheduleStatFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}

