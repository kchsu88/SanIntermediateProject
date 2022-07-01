.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

.field public final endPosition:J

.field public next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;

.field public final startPosition:J

.field public wasInitialized:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    .line 691
    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    .line 692
    return-void
.end method


# virtual methods
.method public final clear()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;
    .locals 2

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    .line 724
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;

    .line 725
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;

    .line 726
    return-object v1
.end method

.method public final initialize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    .line 702
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;

    .line 703
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    .line 704
    return-void
.end method

.method public final translateOffset(J)I
    .locals 2

    .line 714
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr p2, p1

    return p2
.end method
