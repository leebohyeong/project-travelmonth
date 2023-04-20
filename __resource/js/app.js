import App from 'hwaly-app';
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

import {globalNav} from './common';
import {main} from './main';
import {benefitsLocal} from './benefits';
import {trendList} from './trend';

const app = new App();

app.add({globalNav});
app.add({benefitsLocal});
app.add({trendList});
app.add({main});

app.auto('globalNav');

app.readyAndRun();