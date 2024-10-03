FROM node:22.9-slim AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base as deps
WORKDIR /app
COPY .pnpm-lock.yaml /app/.pnpm-lock.yaml
COPY package.json /app/package.json
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile

FROM deps as build
WORKDIR /app
COPY . .
COPY --from=deps /app/node_modules /app/node_modules
RUN pnpm run build

FROM nginx:alpine3.19-slim
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]