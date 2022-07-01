.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

.field private final upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 39
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 40
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    .line 41
    return-void
.end method


# virtual methods
.method public final bridge synthetic createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;
    .locals 4

    .line 45
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/PriorityDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;I)V

    return-object v0
.end method
