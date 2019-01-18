#
# Copyright (C) 2019 lrinQVQ
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-google.golang.org-genproto-go
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/go-genproto.git
PKG_SOURCE_VERSION:=db91494dd46c1fdcbbde05e5ff5eb56df8f7d79a
PKG_SOURCE_DATE:=20190112
PKG_MIRROR_HASH:=33570d2e22f55ea41408684d7c0858e9c5a4fcca6829391f7d56a75d6fffe154

PKG_LICENSE:=Apache License
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=lrinQVQ <cqlrin@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=google.golang.org/genproto
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include ../golang-package.mk

define Package/golang-google.golang.org-genproto-go-dev
$(call GoPackage/GoSubMenu)
  TITLE:=Generated code for Google Cloud client libraries.
  URL:=https://godoc.org/google.golang.org/genproto
  DEPENDS:=$(GO_ARCH_DEPENDS) \
    +golang-golang-protobuf-protoc-gen-go-dev \
    +golang-golang-x-net-dev \
    +golang-google.golang.org-grpc-dev
  PKGARCH:=all
endef

define Package/golang-google.golang.org-genproto-go-dev/description
A high performance, open source, general RPC framework that puts mobile and HTTP/2 first.
endef

$(eval $(call GoSrcPackage,golang-google.golang.org-genproto-go-dev))
$(eval $(call BuildPackage,golang-google.golang.org-genproto-go-dev))
