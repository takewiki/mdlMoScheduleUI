% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scheduleStat.R
\name{scheduleStatUI}
\alias{scheduleStatUI}
\title{产品分组UI}
\usage{
scheduleStatUI(
  tabTitle = "生产订单排产统计表",
  colTitles = c("操作区域", "报表区域"),
  widthRates = c(4, 8),
  func_left = scheduleStatFunc_left,
  func_right = scheduleStatFunc_right
)
}
\arguments{
\item{tabTitle}{标题}

\item{com_left}{左}

\item{com_right}{右}
}
\value{
返回值
}
\description{
产品分组UI
}
\examples{
scheduleStatUI()
}
