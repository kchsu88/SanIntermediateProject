.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    .line 234
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 225
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 227
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v4

    .line 228
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/DefaultOggSeeker;JJJ)J

    move-result-wide v0

    .line 229
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    .line 219
    const/4 v0, 0x1

    return v0
.end method
