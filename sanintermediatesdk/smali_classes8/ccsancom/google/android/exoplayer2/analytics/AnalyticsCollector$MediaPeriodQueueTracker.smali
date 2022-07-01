.class final Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPeriodTimelines:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Lccsancom/google/android/exoplayer2/Timeline$Period;

.field private playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/Timeline$Period;)V
    .locals 1
    .param p1, "period"    # Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 1018
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    .line 1019
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lccsancom/google/common/collect/ImmutableMap;

    .line 1020
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 1004
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 2
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "preferredTimeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/Timeline;",
            ">;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/Timeline;",
            ")V"
        }
    .end annotation

    .line 1130
    .local p1, "mediaPeriodTimelinesBuilder":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;>;"
    if-nez p2, :cond_0

    .line 1131
    return-void

    .line 1133
    :cond_0
    iget-object v0, p2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lccsancom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1134
    invoke-virtual {p1, p2, p3}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/Timeline;

    .line 1137
    .local v0, "existingTimeline":Lccsancom/google/android/exoplayer2/Timeline;
    if-eqz v0, :cond_2

    .line 1138
    invoke-virtual {p1, p2, v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 1141
    .end local v0    # "existingTimeline":Lccsancom/google/android/exoplayer2/Timeline;
    :cond_2
    :goto_0
    return-void
.end method

.method private static findCurrentPlayerMediaPeriodInQueue(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 16
    .param p0, "player"    # Lccsancom/google/android/exoplayer2/Player;
    .param p2, "playingMediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "period"    # Lccsancom/google/android/exoplayer2/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/Player;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 1149
    .local p1, "mediaPeriodQueue":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentTimeline()Lccsancom/google/android/exoplayer2/Timeline;

    move-result-object v6

    .line 1150
    .local v6, "playerTimeline":Lccsancom/google/android/exoplayer2/Timeline;
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result v7

    .line 1153
    .local v7, "playerPeriodIndex":I
    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object v10, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7}, Lccsancom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    .line 1155
    .local v10, "playerPeriodUid":Ljava/lang/Object;
    :goto_0
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v15, p3

    goto :goto_1

    .line 1159
    :cond_1
    nop

    .line 1158
    move-object/from16 v15, p3

    invoke-virtual {v6, v7, v15}, Lccsancom/google/android/exoplayer2/Timeline;->getPeriod(ILccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 1160
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Lccsancom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1159
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v0

    move v14, v0

    goto :goto_2

    .line 1155
    :cond_2
    move-object/from16 v15, p3

    .line 1156
    :goto_1
    const/4 v0, -0x1

    const/4 v14, -0x1

    .line 1159
    :goto_2
    nop

    .line 1161
    .local v14, "playerNextAdGroupIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1162
    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1163
    .local v1, "mediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    nop

    .line 1166
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v11

    .line 1167
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v12

    .line 1168
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v13

    .line 1163
    move-object v9, v1

    invoke-static/range {v9 .. v14}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1170
    return-object v1

    .line 1161
    .end local v1    # "mediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v5, p1

    .line 1173
    .end local v0    # "i":I
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 1174
    nop

    .line 1177
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    .line 1178
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v3

    .line 1179
    invoke-interface/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v4

    .line 1174
    move-object/from16 v0, p2

    move-object v1, v10

    move v5, v14

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1181
    return-object p2

    .line 1184
    :cond_5
    return-object v8
.end method

.method private static isMatchingMediaPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .locals 3
    .param p0, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p1, "playerPeriodUid"    # Ljava/lang/Object;
    .param p2, "isPlayingAd"    # Z
    .param p3, "playerAdGroupIndex"    # I
    .param p4, "playerAdIndexInAdGroup"    # I
    .param p5, "playerNextAdGroupIndex"    # I

    .line 1194
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1195
    return v1

    .line 1198
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v0, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v0, p5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private updateMediaPeriodTimelines(Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 3
    .param p1, "preferredTimeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 1105
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->builder()Lccsancom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1106
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;>;"
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1108
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1111
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1112
    invoke-static {v1, v2}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1113
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V

    goto :goto_1

    .line 1116
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1117
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v2, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1120
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lccsancom/google/common/collect/ImmutableMap$Builder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1123
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->build()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lccsancom/google/common/collect/ImmutableMap;

    .line 1124
    return-void
.end method


# virtual methods
.method public getCurrentPlayerMediaPeriod()Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1030
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1063
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lccsancom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_0
    return-object v0
.end method

.method public getMediaPeriodIdTimeline(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/Timeline;
    .locals 1
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1072
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getPlayingMediaPeriod()Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1041
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getReadingMediaPeriod()Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1052
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player;)V
    .locals 3
    .param p1, "player"    # Lccsancom/google/android/exoplayer2/Player;

    .line 1077
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 1078
    invoke-static {p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1079
    return-void
.end method

.method public onQueueUpdated(Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Player;)V
    .locals 3
    .param p2, "readingPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "player"    # Lccsancom/google/android/exoplayer2/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/Player;",
            ")V"
        }
    .end annotation

    .line 1091
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    .line 1092
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1094
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1096
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_1

    .line 1097
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 1098
    invoke-static {p3, v0, v1, v2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1101
    :cond_1
    invoke-interface {p3}, Lccsancom/google/android/exoplayer2/Player;->getCurrentTimeline()Lccsancom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1102
    return-void
.end method

.method public onTimelineChanged(Lccsancom/google/android/exoplayer2/Player;)V
    .locals 3
    .param p1, "player"    # Lccsancom/google/android/exoplayer2/Player;

    .line 1083
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lccsancom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 1084
    invoke-static {p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1085
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/Player;->getCurrentTimeline()Lccsancom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 1086
    return-void
.end method
