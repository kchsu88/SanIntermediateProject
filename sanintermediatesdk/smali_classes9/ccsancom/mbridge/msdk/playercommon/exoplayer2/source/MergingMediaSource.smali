.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private final compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private primaryManifest:Ljava/lang/Object;

.field private primaryTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 93
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 94
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 96
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 97
    return-void
.end method

.method public varargs constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 82
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 83
    return-void
.end method

.method private checkTimelineMerges(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 2

    .line 163
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq p1, v0, :cond_1

    .line 166
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    .line 168
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
    .locals 4

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 118
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    move-result-object v3

    aput-object v3, v1, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

    invoke-direct {p1, p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    return-object p1
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 113
    return-void

    .line 110
    :cond_0
    throw v0
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Integer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->checkTimelineMerges(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 149
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz p1, :cond_1

    .line 150
    return-void

    .line 152
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p2, p1, :cond_2

    .line 154
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 155
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->refreshSourceInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 160
    :cond_3
    return-void
.end method

.method protected final bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public final prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V

    .line 102
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 102
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public final releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 126
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;

    .line 127
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 128
    aget-object v1, v1, v0

    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 2

    .line 134
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 136
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    .line 137
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 138
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mergeError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaSource;->mediaSources:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 141
    return-void
.end method