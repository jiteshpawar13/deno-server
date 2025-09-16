# 1. Use official Deno image
FROM denoland/deno:alpine-1.39.2

# 2. Set working directory
WORKDIR /app

# 3. Copy project files
COPY . .

# 4. Expose the port Render assigns (we don't hardcode ENV PORT)
EXPOSE 8080

# 5. Run the Deno server
CMD ["run", "--allow-net", "--allow-env", "deno.ts"]
