require("gitblame").setup({
  enabled = true,
  message_template = "      <author>, <date> • <summary> • <sha>",
  date_format = "%r",
})
