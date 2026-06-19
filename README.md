# 🎮 3D GAME PORTFOLIO

Three.js로 만든 신박한 3D 웹 게임 모음. 모든 게임은 **단일 HTML 파일**이라 설치 없이 브라우저에서 바로 실행됩니다.

## ▶ 실행 방법

`portfolio.html` 을 브라우저(Chrome/Edge 등)로 열면 메인 허브에서 모든 게임을 골라 플레이할 수 있습니다.

> 개별 게임 파일을 더블클릭해서 바로 열어도 됩니다.
> 모든 파일은 **같은 폴더**에 함께 두어야 링크가 정상 작동합니다.

## 📁 파일 구조

### 메인 / 문서
| 파일 | 설명 |
|------|------|
| `portfolio.html` | 메인 허브 — 모든 게임 진입점 |
| `upgrade-guide.html` | 비주얼 고도화 가이드 (기법 11종 + 무료 에셋 + 라이선스) |
| `model-gallery.html` | 3D 모델 스타일·라이선스 비교 갤러리 |
| `README.md` | 이 문서 |

### 게임 10종
| 파일 | 게임 | 장르 |
|------|------|------|
| `jump-island.html` | 점프 아일랜드 | 마리오풍 플랫포머 |
| `star-striker.html` | 스타 스트라이커 | 우주 슈팅 |
| `deep-blue.html` | 딥 블루 | 심해 탐험 |
| `lumen.html` | 루멘 | 빛 반사 퍼즐 |
| `dream-fall.html` | 드림 폴 | 꿈속 무한 낙하 |
| `motion-catch.html` | 모션 캐처 | 웹캠 모션 인식 |
| `orbit-putt.html` | 오르빗 퍼트 | 중력 골프 퍼즐 |
| `devour-ball.html` | 먹깨비 볼 | 카타마리식 수집 |
| `neon-tube.html` | 네온 튜브 | 중력 플립 러너 |
| `sandbox3d.html` | 3D 물리 샌드박스 | 물리 놀이터 |

### 업그레이드 버전 (고도화 적용 예시)
| 파일 | 원본 | 적용 기법 |
|------|------|-----------|
| `jump-island-gltf.html` | 점프 아일랜드 | 실제 GLTF 캐릭터 모델 + 리깅 애니메이션 |
| `star-striker-hd.html` | 스타 스트라이커 | 후처리(블룸) + 환경광 + 절차 텍스처 + PBR 모델 |

## 🛠 기술 스택

- **Three.js** — 3D 렌더링 (기본 게임은 r128 전역 스크립트, 업그레이드판은 0.160 ES 모듈)
- **cannon.js** — 물리 엔진 (3D 물리 샌드박스)
- 외부 빌드 도구·설치 없음. 순수 HTML/CSS/JS.

## 🌐 인터넷 연결

- 기본 게임 10종: Three.js를 CDN(cdnjs)에서 불러옵니다.
- 업그레이드 버전: 최신 Three.js 모듈 + 3D 모델을 CDN(jsDelivr)에서 불러오므로 **실행 시 인터넷 필요**.

## 🎨 에셋 & 라이선스

업그레이드 버전에 쓰인 3D 모델은 외부 무료 모델입니다. 라이선스 종류와 무료 에셋 사이트(Kenney, Quaternius, Poly Haven 등)는 `upgrade-guide.html` 에 정리되어 있습니다.

- **CC0** = 상업적 사용까지 완전 무료 (출처 표기 불필요)
- **CC BY** = 무료, 단 제작자 출처 표기 필요
- **CC BY-NC** = 비상업적(개인·데모)만 허용

> 게임을 판매·배포할 계획이면 CC0 에셋만 사용하는 것을 권장합니다.

## 🕹 조작법

각 게임의 조작법은 화면 하단 안내 또는 `portfolio.html` 카드에 표시됩니다.

---
*Made with Three.js · 단일 HTML · 설치 불필요*
