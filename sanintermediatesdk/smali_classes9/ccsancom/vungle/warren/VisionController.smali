.class Lccsancom/vungle/warren/VisionController;
.super Ljava/lang/Object;
.source "VisionController.java"


# static fields
.field static final ADVERTISER_DETAILS:Ljava/lang/String; = "advertiser_details"

.field static final AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field static final CREATIVE_DETAILS:Ljava/lang/String; = "creative_details"

.field static final DATA_SCIENCE_CACHE:Ljava/lang/String; = "data_science_cache"

.field static final FILTER_ID:Ljava/lang/String; = "_id"

.field static final LAST_TIME_VIEWED:Ljava/lang/String; = "last_time_viewed"

.field static final LAST_VIEWED_ADVERTISER_ID:Ljava/lang/String; = "last_viewed_advertiser_id"

.field static final LAST_VIEWED_CAMPAIGN_ID:Ljava/lang/String; = "last_viewed_campaign_id"

.field static final LAST_VIEWED_CREATIVE_ID:Ljava/lang/String; = "last_viewed_creative_id"

.field static final TOTAL_VIEW_COUNT:Ljava/lang/String; = "total_view_count"

.field static final VIEW_COUNT:Ljava/lang/String; = "view_count"

.field static final VISION:Ljava/lang/String; = "vision"

.field static final VISION_COOKIE:Ljava/lang/String; = "visionCookie"

.field static final WINDOW:Ljava/lang/String; = "window"


# instance fields
.field private config:Lccsancom/vungle/warren/vision/VisionConfig;

.field private final networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/NetworkProvider;)V
    .locals 1
    .param p1, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p2, "networkProvider"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lccsancom/vungle/warren/vision/VisionConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/vision/VisionConfig;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    .line 57
    iput-object p1, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 58
    iput-object p2, p0, Lccsancom/vungle/warren/VisionController;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 59
    return-void
.end method

.method private getDataScienceCache()Ljava/lang/String;
    .locals 3

    .line 63
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/Cookie;

    const-string v2, "visionCookie"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 64
    .local v0, "cookie":Lccsancom/vungle/warren/model/Cookie;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "data_science_cache"

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method clearData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    .line 89
    return-void
.end method

.method getFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "advertiser_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "creative_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "campaign_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "advertiser"

    return-object v0

    .line 158
    :pswitch_1
    const-string v0, "campaign"

    return-object v0

    .line 156
    :pswitch_2
    const-string v0, "creative"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f3875ed -> :sswitch_2
        0x4bd2e9b2 -> :sswitch_1
        0x6e061b2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPayload()Lccsancom/google/gson/JsonObject;
    .locals 26

    .line 94
    move-object/from16 v0, p0

    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 95
    .local v1, "vision":Lccsancom/google/gson/JsonObject;
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/VisionController;->getDataScienceCache()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "data_science_cache":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 97
    const-string v3, "data_science_cache"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v3, 0x0

    .line 100
    .local v3, "limit":I
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v4, :cond_3

    .line 101
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v4}, Lccsancom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 114
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v3, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_2

    .line 105
    :sswitch_0
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->wifi:I

    if-lez v4, :cond_1

    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->wifi:I

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->device:I

    :goto_0
    move v3, v4

    .line 106
    goto :goto_2

    .line 111
    :sswitch_1
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->mobile:I

    if-lez v4, :cond_2

    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->mobile:I

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v4, v4, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v4, v4, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->device:I

    :goto_1
    move v3, v4

    .line 118
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 119
    .local v4, "start":J
    new-instance v6, Lccsancom/google/gson/JsonArray;

    invoke-direct {v6}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 120
    .local v6, "windows":Lccsancom/google/gson/JsonArray;
    const-string v7, "aggregate"

    invoke-virtual {v1, v7, v6}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 121
    iget-object v7, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v7, v7, Lccsancom/vungle/warren/vision/VisionConfig;->aggregationTimeWindows:[I

    if-eqz v7, :cond_b

    .line 122
    iget-object v7, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v7, v7, Lccsancom/vungle/warren/vision/VisionConfig;->aggregationTimeWindows:[I

    array-length v8, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v8, :cond_a

    aget v11, v7, v10

    .line 123
    .local v11, "window":I
    sget-object v12, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sub-long v12, v4, v12

    .line 124
    .local v12, "after":J
    iget-object v14, v0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v14, v12, v13}, Lccsancom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsancom/vungle/warren/vision/VisionAggregationInfo;

    .line 125
    .local v14, "info":Lccsancom/vungle/warren/vision/VisionAggregationInfo;
    new-instance v15, Lccsancom/google/gson/JsonObject;

    invoke-direct {v15}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 126
    .local v15, "windowData":Lccsancom/google/gson/JsonObject;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v16, v2

    .end local v2    # "data_science_cache":Ljava/lang/String;
    .local v16, "data_science_cache":Ljava/lang/String;
    const-string v2, "window"

    invoke-virtual {v15, v2, v9}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 127
    if-eqz v14, :cond_4

    iget-object v2, v14, Lccsancom/vungle/warren/vision/VisionAggregationInfo;->lastCreative:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    const-string v9, "last_viewed_creative_id"

    invoke-virtual {v15, v9, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v14, :cond_5

    iget v2, v14, Lccsancom/vungle/warren/vision/VisionAggregationInfo;->totalCount:I

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v9, "total_view_count"

    invoke-virtual {v15, v9, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 129
    iget-object v2, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lccsancom/vungle/warren/vision/VisionConfig;->aggregationFilters:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 130
    iget-object v2, v0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lccsancom/vungle/warren/vision/VisionConfig;->aggregationFilters:[Ljava/lang/String;

    array-length v9, v2

    move-wide/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "start":J
    .local v17, "start":J
    :goto_6
    if-ge v4, v9, :cond_8

    aget-object v5, v2, v4

    .line 131
    .local v5, "filter":Ljava/lang/String;
    new-instance v19, Lccsancom/google/gson/JsonArray;

    invoke-direct/range {v19 .. v19}, Lccsancom/google/gson/JsonArray;-><init>()V

    move-object/from16 v20, v19

    .line 132
    .local v20, "details":Lccsancom/google/gson/JsonArray;
    move-object/from16 v19, v2

    move-object/from16 v2, v20

    .end local v20    # "details":Lccsancom/google/gson/JsonArray;
    .local v2, "details":Lccsancom/google/gson/JsonArray;
    invoke-virtual {v15, v5, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 133
    invoke-virtual {v0, v5}, Lccsancom/vungle/warren/VisionController;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    move-object/from16 v20, v7

    iget-object v7, v0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v7, v12, v13, v3, v5}, Lccsancom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 135
    .local v7, "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    if-eqz v7, :cond_7

    .line 136
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lccsancom/vungle/warren/vision/VisionAggregationData;

    .line 137
    .local v0, "d":Lccsancom/vungle/warren/vision/VisionAggregationData;
    new-instance v22, Lccsancom/google/gson/JsonObject;

    invoke-direct/range {v22 .. v22}, Lccsancom/google/gson/JsonObject;-><init>()V

    move-object/from16 v23, v22

    .line 138
    .local v23, "elem":Lccsancom/google/gson/JsonObject;
    move/from16 v22, v3

    .end local v3    # "limit":I
    .local v22, "limit":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v5

    .end local v5    # "filter":Ljava/lang/String;
    .local v24, "filter":Ljava/lang/String;
    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lccsancom/vungle/warren/vision/VisionAggregationData;->id:Ljava/lang/String;

    move-object/from16 v25, v7

    move-object/from16 v7, v23

    .end local v23    # "elem":Lccsancom/google/gson/JsonObject;
    .local v7, "elem":Lccsancom/google/gson/JsonObject;
    .local v25, "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    invoke-virtual {v7, v3, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v3, v0, Lccsancom/vungle/warren/vision/VisionAggregationData;->viewCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "view_count"

    invoke-virtual {v7, v5, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 140
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v5, v8

    move/from16 v23, v9

    iget-wide v8, v0, Lccsancom/vungle/warren/vision/VisionAggregationData;->lastTimeStamp:J

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v8, "last_time_viewed"

    invoke-virtual {v7, v8, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 141
    invoke-virtual {v2, v7}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 142
    .end local v0    # "d":Lccsancom/vungle/warren/vision/VisionAggregationData;
    .end local v7    # "elem":Lccsancom/google/gson/JsonObject;
    move-object/from16 v0, p0

    move v8, v5

    move/from16 v3, v22

    move/from16 v9, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto :goto_7

    .line 136
    .end local v22    # "limit":I
    .end local v24    # "filter":Ljava/lang/String;
    .end local v25    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    .restart local v3    # "limit":I
    .restart local v5    # "filter":Ljava/lang/String;
    .local v7, "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    :cond_6
    move/from16 v22, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move v5, v8

    move/from16 v23, v9

    .end local v3    # "limit":I
    .end local v5    # "filter":Ljava/lang/String;
    .end local v7    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    .restart local v22    # "limit":I
    .restart local v24    # "filter":Ljava/lang/String;
    .restart local v25    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    goto :goto_8

    .line 135
    .end local v22    # "limit":I
    .end local v24    # "filter":Ljava/lang/String;
    .end local v25    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    .restart local v3    # "limit":I
    .restart local v5    # "filter":Ljava/lang/String;
    .restart local v7    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    :cond_7
    move/from16 v22, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move v5, v8

    move/from16 v23, v9

    .line 130
    .end local v2    # "details":Lccsancom/google/gson/JsonArray;
    .end local v3    # "limit":I
    .end local v5    # "filter":Ljava/lang/String;
    .end local v7    # "data":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    .restart local v22    # "limit":I
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v8, v5

    move-object/from16 v2, v19

    move-object/from16 v7, v20

    move/from16 v3, v22

    move/from16 v9, v23

    goto/16 :goto_6

    .end local v22    # "limit":I
    .restart local v3    # "limit":I
    :cond_8
    move/from16 v22, v3

    move-object/from16 v20, v7

    move v5, v8

    .end local v3    # "limit":I
    .restart local v22    # "limit":I
    goto :goto_9

    .line 129
    .end local v17    # "start":J
    .end local v22    # "limit":I
    .restart local v3    # "limit":I
    .restart local v4    # "start":J
    :cond_9
    move/from16 v22, v3

    move-wide/from16 v17, v4

    move-object/from16 v20, v7

    move v5, v8

    .line 146
    .end local v3    # "limit":I
    .end local v4    # "start":J
    .restart local v17    # "start":J
    .restart local v22    # "limit":I
    :goto_9
    invoke-virtual {v6, v15}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 122
    .end local v11    # "window":I
    .end local v12    # "after":J
    .end local v14    # "info":Lccsancom/vungle/warren/vision/VisionAggregationInfo;
    .end local v15    # "windowData":Lccsancom/google/gson/JsonObject;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v8, v5

    move-object/from16 v2, v16

    move-wide/from16 v4, v17

    move-object/from16 v7, v20

    move/from16 v3, v22

    goto/16 :goto_3

    .end local v16    # "data_science_cache":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v22    # "limit":I
    .local v2, "data_science_cache":Ljava/lang/String;
    .restart local v3    # "limit":I
    .restart local v4    # "start":J
    :cond_a
    move-object/from16 v16, v2

    move/from16 v22, v3

    move-wide/from16 v17, v4

    .end local v2    # "data_science_cache":Ljava/lang/String;
    .end local v3    # "limit":I
    .end local v4    # "start":J
    .restart local v16    # "data_science_cache":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v22    # "limit":I
    goto :goto_a

    .line 121
    .end local v16    # "data_science_cache":Ljava/lang/String;
    .end local v17    # "start":J
    .end local v22    # "limit":I
    .restart local v2    # "data_science_cache":Ljava/lang/String;
    .restart local v3    # "limit":I
    .restart local v4    # "start":J
    :cond_b
    move-object/from16 v16, v2

    move/from16 v22, v3

    move-wide/from16 v17, v4

    .line 149
    .end local v2    # "data_science_cache":Ljava/lang/String;
    .end local v3    # "limit":I
    .end local v4    # "start":J
    .restart local v16    # "data_science_cache":Ljava/lang/String;
    .restart local v17    # "start":J
    .restart local v22    # "limit":I
    :goto_a
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method getVisionConfig()Lccsancom/vungle/warren/vision/VisionConfig;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    return-object v0
.end method

.method isEnabled()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-boolean v0, v0, Lccsancom/vungle/warren/vision/VisionConfig;->enabled:Z

    return v0
.end method

.method reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "creative"    # Ljava/lang/String;
    .param p2, "campaign"    # Ljava/lang/String;
    .param p3, "advertiser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v7, Lccsancom/vungle/warren/model/VisionData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/vungle/warren/model/VisionData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v1, v1, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    iget-object v1, v1, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v1, v1, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    .line 85
    return-void
.end method

.method setConfig(Lccsancom/vungle/warren/vision/VisionConfig;)V
    .locals 2
    .param p1, "config"    # Lccsancom/vungle/warren/vision/VisionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lccsancom/vungle/warren/VisionController;->config:Lccsancom/vungle/warren/vision/VisionConfig;

    .line 77
    iget-boolean v0, p1, Lccsancom/vungle/warren/vision/VisionConfig;->enabled:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p1, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lccsancom/vungle/warren/vision/VisionConfig;->viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;

    iget v1, v1, Lccsancom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    .line 80
    :cond_1
    return-void
.end method

.method setDataScienceCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "cache"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 68
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    const-string v1, "visionCookie"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "cookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz p1, :cond_0

    .line 70
    const-string v1, "data_science_cache"

    invoke-virtual {v0, v1, p1}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/VisionController;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
