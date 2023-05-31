<!--
  <<< Author notes: Step 4 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 4: Generate release notes and merge

_Thanks for opening that pull request :dancer:_

### Automatically generated release notes

[Automatically generated release notes](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes) provide an automated alternative to manually writing release notes for your GitHub releases. With automatically generated release notes, you can quickly generate an overview of the contents of a release. Automatically generated release notes include a list of merged pull requests, a list of contributors to the release, and a link to a full changelog. You can also customize your release notes once they are generated.

### :keyboard: Activity: Generate release notes

1. In a separate tab, go to the **Releases** page for this repository.
   - _Tip: To reach this page, click the **Code** tab at the top of your repository. Then, find the navigation bar below the repository description, and click the **Releases** heading link._
1. Click the **Draft a new release** button.
1. In the field for _Tag version_, specify `v1.0.0`.
1. To the right of the tag dropdown, click the _Target_ dropddown and select the `release-v1.0` branch.
   - _Tip: This is temporary in order to generate release notes based on the changes in this branch._
1. To the top right of the description text box, click **Generate release notes**.
1. Review the release notes in the text box and customize the content if desired.
1. Set the _Target_ branch back to the `main`, as this is the branch you want to create your tag on once the release branch is merged.
1. Click **Save draft**, as you will publish this release in the next step.

You can now [merge](https://docs.github.com/en/get-started/quickstart/github-glossary#merge) your pull request!

### :keyboard: Activity: Merge into main

1. In a separate tab, go to the **Pull requests** page for this repository.
1. Open your **Release v1.0** pull request.
1. Click **Merge pull request**.
1. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.
