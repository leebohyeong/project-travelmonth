import App from 'hwaly-app';
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

import {globalNav} from './common';
import {benefitsLocal} from './benefits';

const app = new App();

app.add({globalNav});
app.add({benefitsLocal});

app.auto('globalNav');

app.readyAndRun();