.class interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# virtual methods
.method public abstract createSeekMap()Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;
.end method

.method public abstract read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract startSeek(J)J
.end method
