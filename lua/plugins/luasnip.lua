return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      
      -- Wait for friendly-snippets to load before adding custom snippets
      vim.defer_fn(function()
        local ls = require("luasnip")
        local s = ls.snippet
        local t = ls.text_node
        local i = ls.insert_node
        local fmt = require("luasnip.extras.fmt").fmt
        
        -- Add custom React snippets
        ls.add_snippets("typescriptreact", {
          s("rfc", fmt([[
import React from 'react';

const {} = () => {{
  return (
    <div>
      {}
    </div>
  );
}};

export default {};
]], { i(1, "ComponentName"), i(0), i(1)})),
          
          s("rcc", fmt([[
import React, {{ useState }} from 'react';

const {} = () => {{
  const [{}, set{}] = useState({});
  
  return (
    <div>
      {}
    </div>
  );
}};

export default {};
]], { i(1, "ComponentName"), i(2, "state"), i(2), i(3, "initialValue"), i(0), i(1)})),
          
          s("ueh", fmt([[
useEffect(() => {{
  {}
}}, [{}]);
]], { i(1, "// effect logic"), i(2, "dependencies") })),
          
          s("ust", fmt([[
const [{}, set{}] = useState({});
]], { i(1, "state"), i(1), i(2, "initialValue") })),
          
          s("ucb", fmt([[
const {} = useCallback(() => {{
  {}
}}, [{}]);
]], { i(1, "callbackName"), i(2, "// callback logic"), i(3, "dependencies") })),
          
          s("umc", fmt([[
const {} = useMemo(() => {{
  return {};
}}, [{}]);
]], { i(1, "memoizedValue"), i(2, "// computed value"), i(3, "dependencies") })),
        })
        
        -- Also add for JavaScript React
        ls.add_snippets("javascriptreact", {
          s("rfc", fmt([[
import React from 'react';

const {} = () => {{
  return (
    <div>
      {}
    </div>
  );
}};

export default {};
]], { i(1, "ComponentName"), i(0), i(1)})),
          
          s("rcc", fmt([[
import React, {{ useState }} from 'react';

const {} = () => {{
  const [{}, set{}] = useState({});
  
  return (
    <div>
      {}
    </div>
  );
}};

export default {};
]], { i(1, "ComponentName"), i(2, "state"), i(2), i(3, "initialValue"), i(0), i(1)})),
        })
      end, 100)
    end,
  },
}
