# Tools

## Docker Helpers

Get sha of docker image

- docker buildx imagetools inspect node:lts-alpine --format "{{json .Manifest}}" | jq -r '.digest'

Genetate sbom

- docker buildx build --provenance=true --sbom=true --tag iznogohul/image:latest -f Dockerfile .

Keep a python image small (ongoing)

- RUN find .venv -type d \( \
    -name "tests" -o \
    -name "test" -o \
    -name "docs" -o \
    -name "doc" -o \
    -name "examples" -o \
    -name "__pycache__" -o \
    -name "include" \
    \) -prune -exec rm -rf '{}' + && \
    find .venv -type f \( \
    -iname "*.md" -o \
    -iname "*.rst" -o \
    -iname "*.txt" -o \
    -iname "*.c" -o \
    -iname "*.h" -o \
    -iname "*.hpp" -o \
    -iname "*.a" -o \
    -iname "*.map" -o \
    -iname "LICENSE*" -o \
    -iname "NOTICE*" \
    \) -delete && \
    find .venv -name "*.so*" -exec strip --strip-unneeded {} + 2>/dev/null || true && \
    rm -rf /app/.venv/lib/python*/site-packages/pip* \
    /app/.venv/lib/python*/site-packages/wheel* \
    /app/.venv/lib/python*/site-packages/setuptools* \
    /app/.venv/share

Keep a nodejs image small (ongoing)

- find node_modules -type d \( -name "test" -o -name "tests" -o -name "docs" -o -name "coverage" \) -prune -exec rm -rf '{}' + && \
    find node_modules -type f \( -iname "*.md" -o -iname "*.txt" -o -iname "license*" -o -iname "*.map" \) -delete

## Various Links - Needs triage

- <https://gatlenculp.medium.com/effortless-code-quality-the-ultimate-pre-commit-hooks-guide-for-2025-57ca501d9835>
- <https://github.com/beam-bots/bb>
- <https://github.com/aws-robotics/ROS2-SecTest>
- <https://www.intrinsic.ai/flowstate>
- <https://www.prisma.io/blog/search-encrypted-data-with-prisma-8-and-cipherstash>
- <https://docs.telekinesis.ai/babyros/introduction.html>
- <https://www.linkedin.com/pulse/navigating-eu-cyber-resilience-act-your-docker-images-harald-fischer-ukjxe>
- <https://alexkondov.com/tao-of-react/>
- <https://github.com/step-security/harden-runner>
- <https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html#rule-9-integrate-container-scanning-tools-into-your-cicd-pipeline>
- <https://www.linkedin.com/posts/iurii-rogulia_cloudflare-security-devops-share-7465301736136560641-EuTj/?utm_source=share&utm_medium=member_android&rcm=ACoAAC0u4hkBCOTNKLwqudHaa654eVW7zmRO5co>
- <https://blastrock.github.io/fde-tpm-sb.html>
