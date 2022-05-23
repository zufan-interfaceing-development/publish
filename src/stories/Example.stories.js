import React from "react";
import { storiesOf } from "@storybook/react";

import { Example } from "../components/example";

const stories =  storiesOf ('App Test', module)

stories.add('App' , ()=>{
    return (<Example/>);
})