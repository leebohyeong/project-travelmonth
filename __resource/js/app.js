import App from 'hwaly-app';
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

import {globalNav, googleTag} from './common';
import {main} from './main';
import {benefits, benefitsLocal, benefitsPlay} from './benefits';
import {trendList} from './trend';
import {travelmonthIntro} from './intro';
import {eventList} from './event';
import {specialList} from './special';


const app = new App();

app.add({globalNav, googleTag});
app.add({benefits, benefitsLocal, benefitsPlay});
app.add({trendList});
app.add({main});
app.add({travelmonthIntro});
app.add({eventList});
app.add({specialList});

app.auto('globalNav', 'googleTag');

app.readyAndRun();