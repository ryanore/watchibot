if [ -z "$NODE_ENV" ]; then
  export NODE_ENV=development
fi

docker-compose down

if [ $1=true ]; then
  docker-compose build
fi
docker-compose up -d
