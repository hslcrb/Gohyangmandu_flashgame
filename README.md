# Gohyangmandu Standalone Ruffle Project

이 프로젝트는 [Ruffle](https://ruffle.rs/)을 사용하여 고전 플래시 게임 '고향만두'를 현대적인 브라우저에서 **즉시 실행**할 수 있도록 구축되었습니다.

## 특징
- **완전 독립 실행**: 별도의 로컬 서버(http-server 등)가 전혀 필요하지 않습니다. `index.html` 파일을 더블 클릭하여 바로 즐길 수 있습니다.
- **원본 퀄리티 100%**: Ruffle 에뮬레이터를 통해 원본 SWF 파일을 그대로 재생하므로, 캐릭터 대사, 사운드, 비밀 레시피 등이 모두 완벽하게 작동합니다.
- **Base64 임베딩**: 브라우저의 보안 정책(`file://` 프로토콜 제한)을 우회하기 위해 SWF 데이터를 HTML 내부에 직접 포함시켰습니다.

## 실행 방법
1. `index.html` 파일을 더블 클릭하여 브라우저에서 엽니다.
2. 게임이 즉시 로드됩니다.

---
Managed by Antigravity AI
