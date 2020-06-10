source("../../pruebas/say_hello.R")
test_that("Cambia las palabras a otras cambiando el número de sus letras", {
    expect_equal(say_hello(), "Hola")
})
