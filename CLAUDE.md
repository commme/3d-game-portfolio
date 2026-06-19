# CLAUDE.md

이 파일은 Claude(또는 다른 AI 협업자)가 이 프로젝트를 다시 작업할 때
참고하는 가이드입니다.

## 프로젝트 개요
Three.js 기반 3D 웹 게임 모음. 각 게임은 **의존성 없는 단일 HTML 파일**.
빌드 시스템 없음. 브라우저에서 파일을 직접 열어 실행.

## 핵심 규칙
- 게임은 반드시 **단일 .html 파일**로 유지한다(CSS/JS 인라인).
- 모든 파일은 같은 폴더에 두며, 링크는 상대경로만 사용한다.
- 메인 진입점은 `portfolio.html`. 새 게임은 여기 카드로 등록한다.

## 두 가지 빌드 방식
1. **기본 게임** (예: jump-island.html, star-striker.html)
   - 전역 스크립트: `three.js r128`, 필요 시 `cannon.js 0.6.2` (cdnjs)
   - `<script>` 전역 THREE 사용.
2. **업그레이드 버전** (예: *-hd.html, *-gltf.html)
   - ES 모듈 + importmap: `three@0.160` (jsDelivr)
   - addons 사용: GLTFLoader, OrbitControls, EffectComposer/UnrealBloomPass/OutputPass,
     RoomEnvironment, PMREMGenerator
   - 외부 3D 모델은 jsDelivr(gh) 경로로 로드. 실패 시 폴백 처리 필수.

## 고도화(비주얼) 기법 — upgrade-guide.html 참고
후처리(블룸+ACES) · 환경광(RoomEnvironment) · PBR 텍스처 · GLTF 모델 교체
+ 심화: 그림자/AO · 파티클 · 셰이더 · 안개/갓레이 · 색보정/DOF · 반사 · AA

## 에셋 라이선스 원칙
- 배포/판매용은 **CC0 우선**(Kenney, Quaternius, Poly Haven, ambientCG).
- CC BY는 출처 표기, CC BY-NC는 비상업적만.

## 작업 시 주의 (중요)
- 이 폴더(마운트된 D: 드라이브)에서 **큰 파일을 Write/Edit 도구로 저장하면
  간헐적으로 끝부분이 잘리는 현상**이 있었다.
  → 큰 HTML은 셸(`cat > file <<'EOF'`)로 한 번에 기록하고,
    저장 후 닫는 태그(`</html>`)·SVG 균형을 반드시 검증한다.
- SVG/코드 추가 후에는 `node --check`(JS) 또는 XML 파싱으로 유효성 확인.

## 검증 체크리스트
- [ ] JS 문법: `node --check`
- [ ] HTML 닫는 태그·테이블·SVG 개수 일치
- [ ] portfolio.html 링크 대상 파일 존재 확인
- [ ] (가능하면) 브라우저로 실제 렌더 확인
