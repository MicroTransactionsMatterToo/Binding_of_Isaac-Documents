## Binding of Isaac: Afterbirth+ Documentation
### Link to actual docs: [here](https://microtransactionsmattertoo.github.io/Binding_of_Isaac-Documents/index.html)

As the provided documentation for TBoI is far from satisfactory, or useful, I have decided to document it myself.

Inside `src` are Lua files for each Namespace, Class and Type from the official documentation. These files ARE STUBS, and will not replicate the functionality of the actual API.

This is also a function Lua module, meaning it can be `require()`'d. This will allow you to check for basic syntax errors in a normal Lua environment, as well as provide editors with names and variables for autocompletion.

Unfortunately, in order to match the naming of functions, and to prevent confusion, each file will have to be `require()`'d seperately.
