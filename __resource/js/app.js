import App from 'hwaly-app';
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

import {globalNav} from './common';

const app = new App();

app.add({globalNav});

app.auto('globalNav');

app.readyAndRun();