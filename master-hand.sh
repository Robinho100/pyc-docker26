docker run -td --name final-destination ubuntu bash
docker exec final-destination apt-get update
docker exec final-destination apt-get install -y wget
docker exec final-destination wget https://www.smashbros.com/fr_FR/fighter/06.html -O /kirby.html
docker exec final-destination sh -c 'echo $(whoami) >> /kirby.html'
docker cp final-destination:/kirby.html kirby.html
