---
layout: 비트캠프 네이버 클라우드 AIaas 과정 10일차
title:  "비트캠프 네이버 클라우드 AIaas 과정 10일차"
date:   2022-11-18 14:19:21 +0900
categories: jekyll update
---

## 수업 내용

## 리눅스 설치

- 가상 머신 구축 시스템 설치: Virtualbox
- CLI 기반 가상 머신 관리 도구 설치: Vagrant
- 가상 머신 생성 및 설정

### 1. Virtualbox 설치

- [Virtualbox 사이트](https://www.virtualbox.org/) 접속
- Downloads/호스트 OS에 맞는 패키지 다운로드
- Virtualbox 설치

### Vagrant 설치

- [Vagrant 사이트](https://www.vagrantup.com/) 접속
- Download 클릭
- 호스트 OS에 맞춰서 설치
- 설치 확인
```bash
$ vagrant -v
```
### 가상 머신 프로젝트 폴더 생성

```bash
~$ mkdir vm-project
~$ cd vm-project
~/vm-project$ mkdir centos
~/vm-project$ cd centos
~/vm-project/centos$ 
```

### Variant Box(가상머신 이미지) 찾기

- [가상머신이미지 저장소 사이트](https://app.vagrantup.com/) 접속
- 'centos' 검색
- 'centos/7'의 'vagrant' 소스 코드를 집접 입력하거나
'''bash
~/vm-project/centos$ vagrant init "centos/7"
'''입력하면 이미지가 없으면 다운로드 함

