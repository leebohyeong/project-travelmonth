import App from 'hwaly-app';
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

import {globalNav} from './common';
import {benefitsLocal} from './benefits';
import {trendList} from './trend';

const app = new App();

app.add({globalNav});
app.add({benefitsLocal});
app.add({trendList});

app.auto('globalNav');

app.readyAndRun();