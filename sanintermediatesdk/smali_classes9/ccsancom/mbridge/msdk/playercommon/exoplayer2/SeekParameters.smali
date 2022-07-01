.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final CLOSEST_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

.field public static final DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

.field public static final EXACT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

.field public static final NEXT_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

.field public static final PREVIOUS_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->EXACT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 41
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 44
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    invoke-direct {v3, v4, v5, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->PREVIOUS_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 46
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    invoke-direct {v3, v1, v2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->NEXT_SYNC:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 48
    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 70
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    .line 71
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    .line 72
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 83
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 89
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
