const readline = require("node:readline");

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const unminify = (str) => {
    return JSON.stringify(JSON.parse(str), null, 2);
}

const printUnminified = (str) => console.log(unminify(str));

const main = () => {
    const userArgs = process.argv.slice(2);
    try {
        if (userArgs.length != 0) {
            printUnminified(userArgs);
            process.exit();
        }
        reader.question("Provide your unminified JSON: ", (payload) => {
            printUnminified(payload);
            process.exit();
        });
    } catch (e) {
        console.error(`You must provide proper unminified JSON... ${e}`);
    }
}

main();
