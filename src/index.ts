import { parseString } from "xml2js"
import * as fs from "fs"
// const fs = eval('require("fs")')

const filepath = 'dist/pptx/01-Presentation-one-page/\[Content_Types\].xml';

fs.readFile(filepath,  (_, data) => {
  parseString(data, (_, result) => {
    console.dir(result);
    console.dir(result.Types.Default);
    console.dir(result.Types.Override);
  });
});
