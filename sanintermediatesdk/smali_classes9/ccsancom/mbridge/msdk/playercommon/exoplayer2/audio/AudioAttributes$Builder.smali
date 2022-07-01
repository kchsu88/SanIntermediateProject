.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private flags:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 57
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 59
    return-void
.end method


# virtual methods
.method public final build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;
    .locals 5

    .line 89
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;-><init>(IIILccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$1;)V

    return-object v0
.end method

.method public final setContentType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0

    .line 65
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 66
    return-object p0
.end method

.method public final setFlags(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0

    .line 73
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 74
    return-object p0
.end method

.method public final setUsage(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0

    .line 81
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 82
    return-object p0
.end method
