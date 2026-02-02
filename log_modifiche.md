# Modifiche da effettuare

- verificare il corretto funzionamento di kafka per le varie istanze di ciascun servizio, quindi verifiare come vengono assegnate le partizioni alle varie istanze (comando per capire quale consumer riceve un determinato evento);

- inserire la replicazione dei topic (vedi slide), e creare i topic non in maniera automatica (vedere se è giusto anno scorso);

- mettere nel docker-compose health check, verificare la correttezza nella replicazione dell'api-gateway e creare i topic eventualmente con un'ulteriore container docker init-kafka;

- rimuovere gli script windows e soprattutto verificare i comandi da shell per creare diversi script per lo start e lo stop del software;

- verificare sulla consegna, ma in caso creare degli script che permettono di verificare il corretto funzionamento delle modifiche effettuate;

- inserire nel .gitignore il file in questione per non caricarlo su github;

- capire come fare la fork per caricare asw-bettermusic-kubernetes