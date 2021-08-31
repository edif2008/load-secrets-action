const core = require("@actions/core");
const exec = require("@actions/exec");
const github = require("@actions/github");

async function run() {
  try {
    const parentDir = require('path').resolve(__dirname, '..');
    const unsetPrevious = core.getInput('unset-previous');
    const exportEnv = core.getInput('export-env');

    // Execute bash script
    await exec.exec(`sh -c "` +
      `INPUT_UNSET_PREVIOUS=` + unsetPrevious + ` ` +
      `INPUT_EXPORT_ENV=` + exportEnv + ` ` + 
      parentDir + `/entrypoint.sh"`);

  } catch (error) {
    core.setFailed(error.message);
  }
}

// noinspection JSIgnoredPromiseFromCall
run();