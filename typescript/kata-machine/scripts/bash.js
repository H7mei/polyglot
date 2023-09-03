const fs = require("fs");
const { spawn } = require("child_process");

const scriptPath = "./scripts/hello.sh";
const scriptContent = "#!/bin/bash\n\necho 'Hello, world!'";

fs.writeFileSync(scriptPath, scriptContent);
fs.chmodSync(scriptPath, "755"); // sets the file permission to rwxr-xr-x

const child = spawn(scriptPath);
child.stdout.on("data", (data) => {
    console.log(data.toString());
});

child.stderr.on("data", (data) => {
    console.error(data.toString());
});

child.on("exit", () => {
    fs.unlinkSync(scriptPath); // removes the hello.sh file
});
