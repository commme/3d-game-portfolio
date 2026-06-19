# 변경 이력 (CHANGELOG)

이 프로젝트의 주요 변경 사항을 기록합니다.
형식은 [Keep a Changelog](https://keepachangelog.com/) 를 따릅니다.

## [0.4.0] - 2026-06-19
### Added
- 프로젝트 문서화: `README.md`, `CHANGELOG.md`, `CLAUDE.md`, `LICENSE`, `.gitignore`
- Git 저장소 초기화 및 첫 커밋

## [0.3.0] - 2026-06-19
### Added
- 비주얼 고도화 가이드 `upgrade-guide.html`
  - 고도화 기법 11종(기본 4 + 심화 7)을 "기존 → 적용 후" SVG 비교 이미지와 함께 정리
  - 무료 에셋 사이트(Kenney, Quaternius, Poly Haven 등) 및 라이선스 치트시트
  - 게임별 적용 추천표
- 3D 모델 갤러리 `model-gallery.html` (포토리얼 PBR / 고퀄 캐릭터 / 스타일라이즈 비교)
### Changed
- `portfolio.html`: 상단에 고도화 가이드·모델 갤러리 링크 추가
- 점프 아일랜드·스타 스트라이커 카드에 "기본 / 업그레이드" 2버전 버튼 추가

## [0.2.0] - 2026-06-19
### Added
- 업그레이드(고도화) 버전 게임
  - `star-striker-hd.html`: 후처리 블룸 + 환경광 + 절차 텍스처 + PBR 모델
  - `jump-island-gltf.html`: 실제 GLTF 캐릭터 모델 + 리깅 애니메이션(Idle/Run/Jump)

## [0.1.0] - 2026-06-19
### Added
- 신작 3D 게임 9종
  - 오르빗 퍼트, 먹깨비 볼, 네온 튜브 (중력/수집/러너)
  - 점프 아일랜드, 스타 스트라이커, 딥 블루, 루멘, 드림 폴, 모션 캐처
- 메인 허브 `portfolio.html`
### Note
- 최초 프로토타입: `sandbox3d.html` (cannon.js 물리 샌드박스)
