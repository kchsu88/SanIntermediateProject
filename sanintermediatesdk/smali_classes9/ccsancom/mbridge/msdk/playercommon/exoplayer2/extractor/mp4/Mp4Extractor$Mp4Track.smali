.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

.field public final track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

.field public final trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 760
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 761
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 762
    return-void
.end method
