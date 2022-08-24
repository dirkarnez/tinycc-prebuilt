export PATH="/D/Softwares/x86_64-8.1.0-release-posix-seh-rt_v6-rev0/mingw64:\
/D/Softwares/x86_64-8.1.0-release-posix-seh-rt_v6-rev0/mingw64/bin:\
/D/Softwares/PortableGit-2.35.1.2-64-bit/bin:\
/mingw64/bin:\
/usr/local/bin:\
/usr/bin:\
/bin"

GIT_URL=git://repo.or.cz/tinycc.git
TAG=release_0_9_27

git clone --recursive $GIT_URL && \
cd tinycc && \
git checkout $TAG  && \
./configure --prefix="$(pwd)/tinycc-installation" && \
mingw32-make &&
mingw32-make install
