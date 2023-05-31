<!--
  <<< Author notes: Step 1 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Step 1: Create a beta release

_Welcome to "Release-based workflow" :sparkle:_

### The GitHub flow

The [GitHub flow](https://guides.github.com/introduction/flow/) is a lightweight, branch-based workflow for projects with regular deployments.

![github-flow](https://user-images.githubusercontent.com/6351798/48032310-63842400-e114-11e8-8db0-06dc0504dcb5.png)

Some projects may deploy more often, with continuous deployment. There might be a "release" every time there's a new commit on main.

But, some projects rely on a different structure for versions and releases.

### Versions

Versions are different iterations of updated software like operating systems, apps, or dependencies. Common examples are "Windows 8.1" to "Windows 10", or "macOS High Sierra" to "macOS Mojave".

Developers update code and then run tests on the project for bugs. During that time, the developers might set up certain securities to protect from new code or bugs. Then, the tested code is ready for production. Teams version the code and release it for installation by end users.

### :keyboard: Activity: Create a release for the current codebase

In this step, you will create a release for this repository on GitHub.

GitHub Releases point to a specific commit. Releases can include release notes in Markdown files, and attached binaries.

Before using a release based workflow for a larger release, let's create a tag and a release.

1. Open a new browser tab, and work on the steps in your second tab while you read the instructions in this tab.
1. Go to the **Releases** page for this repository.
   - _Tip: To reach this page, click the **Code** tab at the top of your repository. Then, find the navigation bar below the repository description, and click the **Releases** heading link._
1. Click **Create a new release**.
1. In the field for _Tag version_, specify a number. In this case, use **v0.9**. Keep the _Target_ as **main**.
1. Give the release a title, like "First beta release". If you'd like, you could also give the release a short description.
1. Select the checkbox next to **Set as a pre-release**, since it is representing a beta version.
1. Click **Publish release**.

### :keyboard: Activity: Introduce a bug to be fixed later

To set the stage for later, let's also add a bug that we'll fix as part of the release workflow in later steps. We've already created a `update-text-colors` branch for you so let's create and merge a pull request with this branch.

1. Open a **new pull request** with `base: release-v1.0` and `compare: update-text-colors`.
1. Set the pull request title to "Updated game text style". You can include a detailed pull request body, an example is below:
   ```
   ## Description:
   - Updated game text color to green
   ```
1. Click **Create pull request**.
1. We'll merge this pull request now. Click **Merge pull request** and delete your branch.
1. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.
