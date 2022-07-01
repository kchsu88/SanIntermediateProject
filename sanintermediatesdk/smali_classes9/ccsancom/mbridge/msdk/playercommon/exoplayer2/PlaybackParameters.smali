.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final skipSilence:Z

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(F)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(FFZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(FFZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 72
    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 73
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    .line 74
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->pitch:F

    .line 75
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    .line 76
    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    .line 77
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 99
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->pitch:F

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :cond_3
    :goto_1
    return v1
.end method

.method public final getMediaTimeUsForPlayoutTimeMs(J)J
    .locals 2

    .line 87
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public final hashCode()I
    .locals 2

    .line 106
    nop

    .line 107
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 108
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 109
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    add-int/2addr v1, v0

    .line 110
    return v1
.end method
