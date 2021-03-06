#!/usr/bin/env bash

# NOTE:
#
# 1. User Name & Email Must be consist of [0-9A-Za-z@.- ]
#    The format is: USER_NAME <USER_EMAIL>
#    - GIT: USER_NAME/USER_EMAIL the same as 'git config' if not set
#    - SVN: USER_NAME auto get from 'svn log', USER_EMAIL is empty by default
#    if not set, then user name & email will auto detected as above
#    USER_NAME="my name"
#    USER_EMAIL="email@my.com"
# 2. This current file & ${VS_VFILE} should be files of the git repo

USER_NAME="user-name-by-hand"

# Repo root directory, full path
REPO_VCS="SVN";
REPO_DIR=$(svn info | grep "Working Copy Root Path:" | awk '{ print $5; }');

# Repo info file to sync
VS_VFILE="${REPO_DIR}/RepoInfo.c2";

# NOTE
# The following value's special chars will be auto escaped
# user    =>    auto
# space         \s+
# ()            \(
# *             \*
# [             \[
# ]             \]
# .             .       regular expression meta char for only one char

# Remote repo URL
VS_REPO_URL="static const char repo_url[] =";
# The repo hash
# - GIT: it is the 7-chars short SHA
# - SVN: it is the reversion number
VS_REPO_HASH="static const char repo_hash[] =";

# The repo last modification time
# ISO8601 => "2019-01-19 01:00:52 +0800"
VS_MODIFY_TIME="static const char modify_time[] =";

# User info
VS_BUILD_USER="static const char build_user[] =";
# The current build time, format is ISO8601
VS_BUILD_TIME="static const char build_time[] =";

# The build host name
VS_HOST_NAME="static const char host_name[] =";
# The build host user name
VS_HOST_USER="static const char host_user[] =";
# The build host system name and version
VS_HOST_OSNV="static const char host_osnv[] =";

# Semantic version
# Version should consist of MAJOR/MINOR/PATCH/TWEAK
#   The MAJOR, MINOR, PATCH must consit of numbers of [0-9]
#   TWEAK is pre-release part, consist of [a-z0-9.-]
# Each line must has one, like the following
#   MAJOR   Can not ignore, must be 0 ~ 9
#   MINOR   Can not ignore, must be 0 ~ 9
#   PATCH   Can not ignore, must be 0 ~ 9
#   TWEAK   Can be ignored, consist of [a-z0-9.-]

VS_MAJOR="static const char semver_major[] =";
VS_MINOR="static const char semver_minor[] =";
VS_PATCH="static const char semver_patch[] =";
VS_TWEAK="static const char semver_tweak[] =";
VS_SEMVER="static const char semver_version[] =";
