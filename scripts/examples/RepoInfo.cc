#include <string>
#include <iostream>

// Update by scripts/sync-repo-info
struct RepoInfo {
    // build host name, user name, os name version
    static const std::string hostName;
    static const std::string hostUser;
    static const std::string hostOsNV;

    // build usr, emai, data time
    static const std::string buildUser;
    static const std::string buildTime;

    // source modify date time
    static const std::string modifyTime;

    // remote repo url & hash
    static const std::string repoHash; // SVN Reversion or Git Commit Hash
    static const std::string repoUrl; // remote repo url
};

const std::string RepoInfo::hostName = "host name";
const std::string RepoInfo::hostUser = "user name";
const std::string RepoInfo::hostOsNV = "Ubuntu 14.04";

const std::string RepoInfo::buildUser = "user-name <email@demo.com>";
const std::string RepoInfo::buildTime = "2018-01-30 10:20:30 +0845";

const std::string RepoInfo::modifyTime = "2019-01-30 20:50:59 +8123";

const std::string RepoInfo::repoHash = "615";
const std::string RepoInfo::repoUrl = "svn://addr/app/trunk/mta";

int main(void)
{
    std::cout << RepoInfo::hostName << std::endl;
    std::cout << RepoInfo::hostUser << std::endl;
    std::cout << RepoInfo::hostOsNV << std::endl;
    std::cout << RepoInfo::buildUser << std::endl;
    std::cout << RepoInfo::buildTime << std::endl;
    std::cout << RepoInfo::modifyTime << std::endl;
    std::cout << RepoInfo::repoHash << std::endl;
    std::cout << RepoInfo::repoUrl << std::endl;

    return 0;
}
