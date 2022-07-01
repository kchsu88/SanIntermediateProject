.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track$Transformation;
    }
.end annotation


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLccsancom/mbridge/msdk/playercommon/exoplayer2/Format;I[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    .line 104
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    .line 105
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 106
    iput-wide p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 107
    iput-wide p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->durationUs:J

    .line 108
    iput-object p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 109
    iput p10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    .line 110
    iput-object p11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 111
    iput p12, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 112
    iput-object p13, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 113
    iput-object p14, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 114
    return-void
.end method


# virtual methods
.method public final getSampleDescriptionEncryptionBox(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 125
    :cond_0
    aget-object p1, v0, p1

    .line 124
    :goto_0
    return-object p1
.end method
