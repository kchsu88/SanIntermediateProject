.class public final Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;
    }
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .locals 1
    .param p1, "upstream"    # Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "priorityTaskManager"    # Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p3, "priority"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    .line 84
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 85
    iput p3, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priority:I

    .line 86
    return-void
.end method


# virtual methods
.method public addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 90
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 92
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 120
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .param p1, "dataSpec"    # Lccsancom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 97
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 103
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/PriorityDataSource;->upstream:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
