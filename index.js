import './normalize';
import './style';
import { Component } from 'preact';

export default class App extends Component {
	render() {
		return (
			<div class='container'>
				<h1>David Annez</h1>
        <h2>
          Head of Product Engineering @{' '}
          <a href='https://www.uswitch.com' rel='noopener noreferer' target='_blank'>uSwitch.com</a>
        </h2>
        <p>
          Leader, business owner and generalist engineer.<br />
          Founder of{' '}
          <a href='https://shop.frogbeats.com' rel='noopener noreferer' target='_blank'>
            Frogbeats
          </a>{' '}
          and{' '}
          <a href='https://customs.frogbeats.com' rel='noopener noreferer' target='_blank'>
            Frogbeats Customs
          </a>.
        </p>
        <ul>
          <li><a href='https://linkedin.com/in/davidannez' rel='noopener noreferer'>LinkedIn</a></li>
          <li><a href='https://twitter.com/davidannez' rel='noopener noreferer'>Twitter</a></li>
          <li><a href='https://github.com/annez' rel='noopener noreferer'>Github</a></li>
        </ul>
			</div>
		);
	}
}
