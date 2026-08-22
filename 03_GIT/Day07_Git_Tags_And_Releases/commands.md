# Day 07 - Git Tags And Releases Commands

## View Existing Tags

git tag

Screenshot:

01_view_tags.png

## Create Lightweight Tag

git tag v1.0

Screenshot:

02_lightweight_tag.png

## Verify Tag

git tag

Screenshot:

03_verify_tag.png

## Create Annotated Tag

git tag -a v1.1 -m "Release Version 1.1"

Screenshot:

04_annotated_tag.png

## View Tag Details

git show v1.1

Screenshot:

05_show_tag.png

## Tag Specific Commit

git tag v1.2 COMMIT_ID

Screenshot:

06_tag_specific_commit.png

## Push Single Tag

git push origin v1.1

Screenshot:

07_push_single_tag.png

## Push All Tags

git push origin --tags

Screenshot:

08_push_all_tags.png

## Delete Local Tag

git tag -d v1.0

Screenshot:

09_delete_local_tag.png

## Delete Remote Tag

git push origin --delete v1.0

Screenshot:

10_delete_remote_tag.png

## View Release History

git log --oneline --decorate

Screenshot:

11_release_history.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
