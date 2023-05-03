
<!--
    The step and endstep markers will cause this
    introduction content to be hidden once the
    repository is created off the template
-->

# Create a release based workflow

_Create a release based workflow that is built on the foundations of the GitHub flow._

<details id=0 open>
<summary><h2>Welcome</h2></summary>

Create a release based workflow that is built on the foundations of the [GitHub flow](https://guides.github.com/introduction/flow/). When your team uses a release-based workflow, GitHub makes it easy to collaborate with deployable iterations of your project that you can package and make available for a wider audience to download and use.

GitHub releases allow your team to package and provide software to your users based on a specific point in the history of your project.

- **Who is this for**: Developers, DevOps Engineers, IT Operations, managers, and teams.
- **What you'll learn**: How to follow a release-based workflow.
- **What you'll build**: You will create tags, releases, and release notes.
- **Prerequisites**: If you need to learn about branches, commits, and pull requests, take [Introduction to GitHub](https://github.com/skills/introduction-to-github) first.
- **How long**: This course is 7 steps long and takes less than 1 hour to complete.

## How to start this course

<!-- For start course, run in JavaScript:
'https://github.com/new?' + new URLSearchParams({
  template_owner: 'skills',
  template_name: 'release-based-workflow',
  owner: '@me',
  name: 'skills-release-based-workflow',
  description: 'My clone repository',
  visibility: 'public',
}).toString()
-->

[![start-course](https://user-images.githubusercontent.com/1221423/235727646-4a590299-ffe5-480d-8cd5-8194ea184546.svg)](https://github.com/new?template_owner=skills&template_name=release-based-workflow&owner=%40me&name=skills-release-based-workflow&description=My+clone+repository&visibility=public)

1. Right-click **Start course** and open the link in a new tab.
2. In the new tab, most of the prompts will automatically fill in for you.
   - For owner, choose your personal account or an organization to host the repository.
   - We recommend creating a public repository, as private repositories will [use Actions minutes](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions).
   - Scroll down and click the **Create repository** button at the bottom of the form.
3. After your new repository is created, wait about 20 seconds, then refresh the page. Follow the step-by-step instructions in the new repository's README.

</details>

<!--Step 1-->
<details id=1>
<summary><h2>Step 1: Create a beta release</h2></summary>

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

To set the stage for later, let's also add a bug that we'll fix as part of the release workflow in later steps.  We've already created a `update-text-colors` branch for you so let's create and merge a pull request with this branch.

1. Open a **new pull request** with `base: release-v1.0` and `compare: update-text-colors`.
1. Set the pull request title to "Updated game text style". You can include a detailed pull request body, an example is below:
    ```
    ## Description:
    - Updated game text color to green
    ```
1. Click **Create pull request**.
1. We'll merge this pull request now. Click **Merge pull request** and delete your branch.
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 2-->
<details id=2>
<summary><h2>Step 2: Add a new feature to the release branch</h2></summary>

_Great job creating a beta release :heart:_

### Release management

As you prepare for a future release, you'll need to organize more than the tasks and features. It's important to create a clear workflow for your team, and to make sure that the work remains organized.

There are several strategies for managing releases. Some teams might use long-lived branches, like `production`, `dev`, and `main`. Some teams use simple feature branches, releasing from the main branch.

No one strategy is better than another. We always recommend being intentional about branches and reducing long-lived branches whenever possible.

In this exercise, you'll use the `release-v1.0` branch to be your one long-lived branch per release version.

### Protected branches

Like the `main` branch, you can protect release branches. This means you can protect branches from force pushes or accidental deletion. This is already configured in this repository.

### Add a feature

Releases are usually made of many smaller changes. Let's pretend we don't know about the bug we added earlier and we'll focus on a few features to update our game before the version update.

- You should update the page background color to black.
- I'll help you change the text colors to green.

### :keyboard: Activity: Update `base.css`

1. Create a new branch off of the `main` branch and change the `body` CSS declaration in `base.css` to match what is below. This will set the page background to black.
```
body {
    background-color: black;
}
```
1. Open a pull request with `release-v1.0` as the `base` branch, and your new branch as the `compare` branch.
1. Fill in the pull request template to describe your changes.
1. Click **Create pull request**.

### Merge the new feature to the release branch
Even with releases, the GitHub flow is still an important strategy for working with your team. It's a good idea to use short-lived branches for quick feature additions and bug fixes.

Merge this feature pull request so that you can open the release pull request as early as possible.

### :keyboard: Activity: Merge the pull request

1. Click **Merge pull request**, and delete your branch.
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 3-->
<details id=3>
<summary><h2>Step 3: Open a release pull request</h2></summary>

_Nice work adding a new feature :smile:_

### Release branches and `main`

You should open a pull request between your release branch and main as early as possible. It might be open for a long time, and that's okay.

In general, the pull request description can include:
- A [reference to an issue](https://docs.github.com/en/articles/basic-writing-and-formatting-syntax/#mentioning-people-and-teams) that the pull request addresses.
- A description of the changes proposed in the pull request.
- [@mentions](https://docs.github.com/en/articles/basic-writing-and-formatting-syntax/#mentioning-people-and-teams) of the person or team responsible for reviewing proposed changes.

To expedite the creation of this pull request, I've added a pull request template to the repository. When you create a pull request, default text will automatically be displayed. This should help you identify and fill out all the necessary information. If you don't want to use the template content, just remove the text from the pull request and repace it with your pull request message.

### :keyboard: Activity: Open a release pull request
Let's make a new pull request comparing the `release-v1.0` branch to the `main` branch.

1. Open a **new pull request** with `base: main` and `compare: release-v1.0`.
1. Ensure the title of your pull request is "Release v1.0".
1. Include a detailed pull request body, an example is below:
    ```
    ## Description:
    - Changed page background color to black.
    - Changed game text color to green.
    ```
1. Click **Create pull request**.
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 4-->
<details id=4>
<summary><h2>Step 4: Generate release notes and merge</h2></summary>

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
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 5-->
<details id=5>
<summary><h2>Step 5: Finalize the release</h2></summary>

_Awesome work on the release notes :+1:_

### Finalizing releases

It's important to be aware of the information what will be visible in that release. In the pre-release, the version and commit messages are visible.

![image](https://user-images.githubusercontent.com/13326548/47883578-bdba7780-ddea-11e8-84b8-563e12f02ca6.png)

### Semantic versioning

Semantic versioning is a formal convention for specifying compatibility. It uses a three-part version number: **major version**; **minor version**; and **patch**.  Version numbers convey meaning about the underlying code and what has been modified. For example, versioning could be handled as follows:

| Code status  | Stage  | Rule  | Example version  |
|---|---|---|---|
| First release  | New product  | Start with 1.0.0  | 1.0.0  |
| Backward compatible fix  | Patch release  | Increment the third digit  | 1.0.1  |
| Backward compatible new feature  | Minor release  | Increment the middle digit and reset the last digit to zero  | 1.1.0  |
| Breaking updates | Major release | Increment the first digit and reset the middle and last digits to zero | 2.0.0 |

Check out this article on [Semantic versioning](https://semver.org/) to learn more.

### Finalize the release

Now let's change our recently automated release from _draft_ to _latest release_.

### :keyboard: Activity: Finalize release

1. In a separate tab, go to the **Releases** page for this repository.
    - _Tip: To reach this page, click the **Code** tab at the top of your repository. Then, find the navigation bar below the repository description, and click the **Releases** heading link._
1. Click the **Edit** button next to your draft release.
1. Ensure the _Target_ branch is set to `main`.
1. Click **Publish release**.
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 6-->
<details id=6>
<summary><h2>Step 6: Commit a hotfix to the release</h2></summary>

_Almost there :heart:_

Notice that I didn't delete the branch? That's intentional.

Sometimes mistakes can happen with releases, and we'll want to be able to correct them on the same branch.

Now that your release is finalized, we have a confession to make. Somewhere in our recent update, I made a mistake and introduced a bug. Instead of changing the text colors to green, we changed the whole game background.

_Tip: Sometimes GitHub Pages takes a few minutes to update. Your page might not immediately show the recent updates you've made._

![image](https://user-images.githubusercontent.com/13326548/48045461-487dd800-e145-11e8-843c-b91a82213eb8.png)

"Hotfixes", or a quick fix to address a bug in software, are a normal part of development. Oftentimes you'll see application updates whose only description is "bug fixes".

When bugs come up after you release a version, you'll need to address them.  We've already created a `hotfix-v1.0.1` and `fix-game-background` branches for you to start.

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
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--Step 7-->
<details id=7>
<summary><h2>Step 7: Create release v1.0.1</h2></summary>

_One last step to go!_

### A final release

You updated the source code, but users can't readily access your most recent changes. Prepare a new release, and distribute that release to the necessary channels.

### Create release v1.0.1

With descriptive pull requests and auto generated release notes, you don't have to spend a lot of time working on your release draft. Follow the steps below to create your new release, generate the release notes, and publish.

### :keyboard: Activity: Complete release

1. In a separate tab, go to to the **Releases** page for this repository.
    - _Tip: To reach this page, click the **Code** tab at the top of your repository. Then, find the navigation bar below the repository description, and click the **Releases** heading link._
1. Click the **Draft a new release** button.
1. Set the _Target_ branch to `main`.
    - _Tip: Practice your semantic version syntax. What should the tag and title for this release be?_
1. To the top right of the description text box, click **Generate release notes**.
1. Review the release notes in the text box and customize the content if desired.
1. Click **Publish release**.
1. Wait about 20 seconds then refresh this page for the next step.

</details>

<details id=x>
<summary><h2>Finish</h2></summary>

<img src="https://octodex.github.com/images/snowtocat_final.jpg" alt=celebrate width=300 align=right>

### Congratulations friend, you've completed this course!

Here's a recap of all the tasks you've accomplished in your repository:

- Create a beta release.
- Add a new feature to the release branch.
- Open a release pull request
- Automate release notes.
- Merge and finalize the release branch.
- Commit a hotfix to the release.
- Create release v1.0.1.

### What's next?

- [We'd love to hear what you thought of this course](https://github.com/skills/.github/discussions).
- [Take another GitHub Skills course](https://github.com/skills).
- [Read the GitHub Getting Started docs](https://docs.github.com/en/get-started).
- To find projects to contribute to, check out [GitHub Explore](https://github.com/explore).

</details>

---

Get help: [Post in our discussion board](https://github.com/skills/.github/discussions) • [Review the GitHub status page](https://www.githubstatus.com/)

© 2022 GitHub • [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) • [MIT License](https://gh.io/mit)
