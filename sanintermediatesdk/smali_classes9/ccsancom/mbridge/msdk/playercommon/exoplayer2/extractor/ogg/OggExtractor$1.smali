.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor$1;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;
    .locals 3

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
