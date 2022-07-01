.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

.field private final upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 50
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 51
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priority:I

    .line 52
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->close()V

    .line 74
    return-void
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
