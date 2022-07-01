.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;
.super Ljava/lang/Object;
.source "Tx3gSubtitle.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;


# static fields
.field public static final EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getEventTime(I)J
    .locals 2

    .line 54
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getEventTimeCount()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 3

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
