# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasic < Formula
  desc "Wrapper for trivy scanner with incident creation."
  homepage ""
  version "1.23.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.17/rasic_1.23.17_darwin_amd64.tar.gz"
      sha256 "409f327a64715ee1345312ac67d48e25a4e1e5ce89510bffa8c664083f735d40"

      def install
        bin.install "darwin_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "darwin_amd64_v1/plugins/source/source_gitlab"
        bin.install "darwin_amd64_v1/rasic"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.17/rasic_1.23.17_darwin_arm64.tar.gz"
      sha256 "5b866162974af0392ebc0942759d4544ee181411319479cbbce522119b753a6b"

      def install
        bin.install "darwin_arm64/plugins/reporter/reporter_gitlab"
        bin.install "darwin_arm64/plugins/source/source_gitlab"
        bin.install "darwin_arm64/rasic"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.17/rasic_1.23.17_linux_amd64.tar.gz"
      sha256 "7e4134e42b7644f1a7461c79d8a912da9f9c42bf96ec5a9eef0a3a0c0d96303f"

      def install
        bin.install "linux_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "linux_amd64_v1/plugins/source/source_gitlab"
        bin.install "linux_amd64_v1/rasic"
      end
    end
  end
end
