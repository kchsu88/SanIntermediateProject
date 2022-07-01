.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private bytesLoaded:J

.field private final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field private final extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/net/Uri;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Lccsanandroid/net/Uri;

    .line 817
    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 818
    invoke-static {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 819
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    .line 820
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    .line 821
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 822
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 823
    return-void
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;
    .locals 0

    .line 798
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 798
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 798
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 798
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 834
    return-void
.end method

.method public final load()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 838
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 839
    :goto_0
    if-nez v1, :cond_6

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_6

    .line 840
    const/4 v2, 0x0

    .line 842
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    iget-wide v12, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 843
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Lccsanandroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;-><init>(Lccsanandroid/net/Uri;JJLjava/lang/String;)V

    iput-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 844
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 845
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 846
    add-long/2addr v4, v12

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 848
    :cond_0
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget-wide v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    move-result-object v2

    .line 850
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v5, :cond_1

    .line 851
    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v2, v12, v13, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 852
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 854
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v5, :cond_2

    .line 855
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->block()V

    .line 856
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    invoke-interface {v2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I

    move-result v1

    .line 857
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)J

    move-result-wide v7

    add-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 858
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    .line 859
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->close()Z

    .line 860
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$1100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Lccsanandroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$1000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 864
    :cond_2
    if-ne v1, v3, :cond_3

    .line 865
    const/4 v1, 0x0

    goto :goto_2

    .line 866
    :cond_3
    nop

    .line 867
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 868
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    .line 870
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 871
    nop

    .line 872
    goto/16 :goto_0

    .line 864
    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_4

    .line 866
    if-eqz v2, :cond_5

    .line 867
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 868
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    iget-wide v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    goto :goto_4

    .line 865
    :cond_4
    nop

    .line 870
    :cond_5
    :goto_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 871
    throw v0

    .line 873
    :cond_6
    return-void
.end method

.method public final setLoadPosition(JJ)V
    .locals 1

    .line 826
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 827
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 828
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 829
    return-void
.end method
