import mojo from "@mojojs/core";

const app = mojo();

app.get("/", ctx => ctx.render({text: "I <3 Mojo!"}));

app.start();