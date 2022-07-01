.class public final Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0
    .param p1, "upstreamFactory"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "priorityTaskManager"    # Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p3, "priority"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 38
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 39
    iput p3, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;
    .locals 4

    .line 44
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 45
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    .line 44
    return-object v0
.end method
