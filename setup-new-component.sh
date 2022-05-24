echo "Component Name ?"
#read COMPONENTNAME
COMPONENTNAME="Kidus"
cd src/components
mkdir $COMPONENTNAME
cd $COMPONENTNAME/

FUN="
function $COMPONENTNAME (){\n
\n};  \nexport {$COMPONENTNAME}
"
echo $FUN >> $COMPONENTNAME.js
INDEXONE="export * from './$COMPONENTNAME'"
INDEXTWO="export\t* from './components/$COMPONENTNAME';"
echo $INDEXONE >> index.js

cd ../../
cd stories/
STORYS="
import React from 'react';\n
import { storiesOf } from '@storybook/react';\n
import { $COMPONENTNAME} from '../components/$COMPONENTNAME';\n
\n
const stories =  storiesOf ('App Test', module)\n
stories.add('App' , ()=>{\n
    return ($COMPONENTNAME);\n
})
"
echo $STORYS >> $COMPONENTNAME".stories.js"
cd ../

echo $INDEXTWO>> "index.js"
echo "The setup is complete!"