return {
     {
	    "ellisonleao/gruvbox.nvim",
	    priority = 1000,
     },
     {
       "phaazon/hop.nvim",
       branch = "v2",
       config = function()
         require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
       end
     },
}

