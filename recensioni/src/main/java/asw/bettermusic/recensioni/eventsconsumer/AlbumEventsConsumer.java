package asw.bettermusic.recensioni.eventsconsumer;

import asw.bettermusic.album.api.events.AlbumCreatedEvent;
import asw.bettermusic.recensioni.domain.*;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import asw.bettermusic.album.api.events.AlbumServiceEventChannel;

@Service
public class AlbumEventsConsumer {

  @Autowired
  private RecensioniEventListener recensioniEventListener;

  @KafkaListener(topics = AlbumServiceEventChannel.channel, groupId = "recensioni")
  public void listen(AlbumCreatedEvent event) {
    recensioniEventListener.onAlbumCreated(event);
  }
}
