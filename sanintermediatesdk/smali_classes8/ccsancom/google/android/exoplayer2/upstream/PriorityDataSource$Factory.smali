.class public final Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 61
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 62
    iput p3, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;
    .locals 4

    .line 67
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 68
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    .line 67
    return-object v0
.end method
