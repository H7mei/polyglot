# Function in r

# buildin function

# 1. abs(x) : absolute value
# 2. sqrt(x) : square root
# 3. ceiling(x) : pembulatan ke atas
# 4. floor(x) : pembulatan ke bawah
# 5. trunc(x) : pembulatan ke nol
# 6. round(x, digits = 0) : pembulatan
# 7. signif(x, digits = 6) : significant digits
# 8. cos(x) : cosinus
# 9. sin(x) : sinus
# 10. tan(x) : tangen
# 11. exp(x) : eksponen
# 12. log(x) : logaritma natural
# 13. log10(x) : logaritma basis 10
# 14. factorial(x) : faktorial
# 15. gamma(x) : fungsi gamma
# 16. lgamma(x) : logaritma fungsi gamma
# 17. digamma(x) : fungsi digamma
# 18. trigamma(x) : fungsi trigamma
# 19. cumsum(x) : kumulatif sum
# 20. cumprod(x) : kumulatif product
# 21. cummax(x) : kumulatif max
# 22. cummin(x) : kumulatif min
# 23. diff(x) : difference
# 24. rank(x) : ranking
# 25. rev(x) : reverse
# 26. sort(x) : sort
# 27. order(x) : order
# 28. sample(x) : sample
# 29. quantile(x) : quantile
# 30. median(x) : median
# 31. mean(x) : mean
# 32. var(x) : variance
# 33. sd(x) : standard deviation
# 34. cor(x) : correlation
# 35. cov(x) : covariance
# 36. range(x) : range
# 37. min(x) : min
# 38. max(x) : max
# 39. sum(x) : sum
# 40. prod(x) : product
# 41. length(x) : length
# 42. dim(x) : dimensi
# 43. nrow(x) : jumlah baris
# 44. ncol(x) : jumlah kolom
# 45. colnames(x) : nama kolom
# 46. rownames(x) : nama baris
# 47. colSums(x) : jumlah kolom
# 48. rowSums(x) : jumlah baris
# 49. colMeans(x) : mean kolom
# 50. rowMeans(x) : mean baris
# 51. colVars(x) : variance kolom
# 52. rowVars(x) : variance baris
# 53. colSds(x) : standard deviation kolom
# 54. rowSds(x) : standard deviation baris
# 55. colMedians(x) : median kolom
# 56. rowMedians(x) : median baris
# 57. colMads(x) : median absolute deviation kolom
# 58. rowMads(x) : median absolute deviation baris
# 59. colMins(x) : min kolom
# 60. rowMins(x) : min baris
# 61. colMaxs(x) : max kolom
# 62. rowMaxs(x) : max baris
# 63. colRanges(x) : range kolom
# 64. rowRanges(x) : range baris
# 65. colOrder(x) : order kolom
# 66. rowOrder(x) : order baris
# 67. colRanks(x) : ranking kolom
# 68. rowRanks(x) : ranking baris
# 69. colQuantiles(x) : quantile kolom
# 70. rowQuantiles(x) : quantile baris
# 71. colCumsums(x) : kumulatif sum kolom
# 72. rowCumsums(x) : kumulatif sum baris
# 73. colCumprods(x) : kumulatif product kolom
# 74. rowCumprods(x) : kumulatif product baris
# 75. colCummaxs(x) : kumulatif max kolom
# 76. rowCummaxs(x) : kumulatif max baris
# 77. colCummins(x) : kumulatif min kolom
# 78. rowCummins(x) : kumulatif min baris
# 79. colDiffs(x) : difference kolom
# 80. rowDiffs(x) : difference baris

# user defined function

# 1. function

ff <- function() {
  print('ss')
}

ff()

# whith parameter

jj <- function(e, r, default = 1) {
  return(e + r + default)
}

jj(1, 2)