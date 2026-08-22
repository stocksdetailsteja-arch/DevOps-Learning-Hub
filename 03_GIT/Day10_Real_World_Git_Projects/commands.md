# Day 10 - Real World Git Projects Commands

## Create Enterprise Repository

mkdir enterprise-project

cd enterprise-project

git init

Screenshot:

01_enterprise_repo.png

## Create Develop Branch

git checkout -b develop

Screenshot:

02_develop_branch.png

## Create Feature Branch

git checkout -b feature/login

Screenshot:

03_feature_login.png

## Commit Feature

git add .

git commit -m "feat: login implementation"

Screenshot:

04_feature_commit.png

## Push Feature Branch

git push origin feature/login

Screenshot:

05_push_feature.png

## Merge To Develop

git checkout develop

git merge feature/login

Screenshot:

06_merge_develop.png

## Create Release Branch

git checkout -b release/v1.0.0

Screenshot:

07_release_branch.png

## Create Release Tag

git tag -a v1.0.0 -m "Release Version 1.0.0"

Screenshot:

08_release_tag.png

## Push Tag

git push origin v1.0.0

Screenshot:

09_push_tag.png

## View Graph

git log --graph --oneline --all

Screenshot:

10_git_graph.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
