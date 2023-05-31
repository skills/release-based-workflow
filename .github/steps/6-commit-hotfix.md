<!--
  <<< Author notes: Step 6 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 6: Commit a hotfix to the release

_Almost there :heart:_

Notice that I didn't delete the branch? That's intentional.

Sometimes mistakes can happen with releases, and we'll want to be able to correct them on the same branch.

Now that your release is finalized, we have a confession to make. Somewhere in our recent update, I made a mistake and introduced a bug. Instead of changing the text colors to green, we changed the whole game background.

_Tip: Sometimes GitHub Pages takes a few minutes to update. Your page might not immediately show the recent updates you've made._

![image](https://user-images.githubusercontent.com/13326548/48045461-487dd800-e145-11e8-843c-b91a82213eb8.png)

"Hotfixes", or a quick fix to address a bug in software, are a normal part of development. Oftentimes you'll see application updates whose only description is "bug fixes".

When bugs come up after you release a version, you'll need to address them. We've already created a `hotfix-v1.0.1` and `fix-game-background` branches for you to start.

We'll submit a hotfix by creating and merging the pull request.

### :keyboard: Activity: Create and merge the hotfix pull request

1. Open a pull request with `hotfix-v1.0.1` as the `base` branch, and `fix-game-background` as the `compare` branch.
1. Fill in the pull request template to describe your changes. You can set the pull request title to "Hotfix for broken game style". You can include a detailed pull request body, an example is below:
   ```
   ## Description:
   - Fixed bug, set game background back to black
   ```
1. Review the changes and click **Create pull request**.
1. We want to merge this into our hotfix branch now so click **Merge pull request**.

Now we want these changes merged into `main` as well so let's create and merge a pull request with our hotfix to `main`.

### :keyboard: Activity: Create the release pull request

1. Open a pull request with `main` as the `base` branch, and `hotfix-v1.0.1` as the `compare` branch.
1. Ensure the title of your pull request is "Hotfix v1.0.1".
1. Include a detailed pull request body, an example is below:
   ```
   ## Description:
   - Fixed bug introduced in last production release - set game background back to black
   ```
1. Review the changes and click **Create pull request**.
1. Click **Merge pull request**.
1. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.
