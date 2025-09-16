# 1. Use Deno’s official image
FROM denoland/deno:alpine-1.39.2

# 2. Set working directory
WORKDIR /app

# 3. Copy code
COPY . .

# 4. Expose the port Render assigns
ENV PORT=${PORT:-8080}
EXPOSE 8080

# 5. Run the proxy when the container starts
CMD ["run", "--allow-net", "--allow-env=PORT", "deno.ts"]
