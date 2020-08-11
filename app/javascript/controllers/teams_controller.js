import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for ExampleReflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  initialize() {
    super.connect();
    this.set_team();
  }

  set_team() {
    if (!this.connectionOpen) return setTimeout(() => this.set_team(), 1);
    this.stimulate("TeamsReflex#set_team");
  }

  beforeSetTeam(anchorElement) {
    document.querySelector(".team").innerText = "Loading...";
  }

  get connectionOpen() {
    return this.StimulusReflex.subscription.consumer.connection.isOpen()
  }
}
