.class public Lccsancom/vungle/warren/model/Report;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/Report$UserAction;,
        Lccsancom/vungle/warren/model/Report$Status;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x3

.field public static final NEW:I = 0x0

.field public static final READY:I = 0x1

.field public static final SENDING:I = 0x2


# instance fields
.field adDuration:J

.field adSize:Ljava/lang/String;

.field adStartTime:J

.field adToken:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field advertisementID:Ljava/lang/String;

.field appId:Ljava/lang/String;

.field public assetDownloadDuration:J

.field campaign:Ljava/lang/String;

.field final clickedThrough:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field headerBidding:Z

.field incentivized:Z

.field public initTimeStamp:J

.field ordinal:I

.field placementId:Ljava/lang/String;

.field playRemoteUrl:Z

.field status:I

.field templateId:Ljava/lang/String;

.field ttDownload:J

.field url:Ljava/lang/String;

.field final userActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Report$UserAction;",
            ">;"
        }
    .end annotation
.end field

.field userID:Ljava/lang/String;

.field videoLength:J

.field videoViewed:I

.field volatile wasCTAClicked:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Report;->status:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    .line 180
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;JLccsancom/vungle/warren/SessionData;)V
    .locals 7
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "startTime"    # J
    .param p5, "sessionData"    # Lccsancom/vungle/warren/SessionData;

    .line 192
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/model/Report;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;JLjava/lang/String;Lccsancom/vungle/warren/SessionData;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;JLjava/lang/String;Lccsancom/vungle/warren/SessionData;)V
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "startTime"    # J
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "sessionData"    # Lccsancom/vungle/warren/SessionData;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Report;->status:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    .line 206
    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    .line 210
    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    .line 211
    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    .line 212
    iput-wide p3, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    .line 213
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    .line 214
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    .line 215
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    .line 216
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lccsancom/vungle/warren/SessionData;->getInitTimeStamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    .line 217
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAssetDownloadDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    .line 218
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown ad type, cannot process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_0
    const-string v0, "vungle_mraid"

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    .line 224
    goto :goto_1

    .line 220
    :pswitch_1
    const-string v0, "vungle_local"

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    .line 221
    nop

    .line 228
    :goto_1
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    .line 229
    if-nez p5, :cond_1

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    goto :goto_2

    .line 232
    :cond_1
    iput-object p5, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    .line 234
    :goto_2
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getOrdinal()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/model/Report;->ordinal:I

    .line 236
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    .line 237
    .local v0, "tempAdSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    invoke-static {v0}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    .line 240
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 524
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    monitor-exit p0

    return v0

    .line 525
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 527
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/Report;

    .line 529
    .local v2, "wrap":Lccsancom/vungle/warren/model/Report;
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    monitor-exit p0

    return v1

    .line 530
    :cond_2
    :try_start_1
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    monitor-exit p0

    return v1

    .line 531
    :cond_3
    :try_start_2
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    monitor-exit p0

    return v1

    .line 532
    :cond_4
    :try_start_3
    iget-boolean v3, v2, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Report;->incentivized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v3, v4, :cond_5

    monitor-exit p0

    return v1

    .line 533
    :cond_5
    :try_start_4
    iget-boolean v3, v2, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Report;->headerBidding:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v3, v4, :cond_6

    monitor-exit p0

    return v1

    .line 534
    :cond_6
    :try_start_5
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    monitor-exit p0

    return v1

    .line 535
    :cond_7
    :try_start_6
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_8

    monitor-exit p0

    return v1

    .line 536
    :cond_8
    :try_start_7
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->videoLength:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->videoLength:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    monitor-exit p0

    return v1

    .line 537
    :cond_9
    :try_start_8
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->adDuration:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->adDuration:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    monitor-exit p0

    return v1

    .line 538
    :cond_a
    :try_start_9
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->ttDownload:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    monitor-exit p0

    return v1

    .line 539
    :cond_b
    :try_start_a
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v3, :cond_c

    monitor-exit p0

    return v1

    .line 540
    :cond_c
    :try_start_b
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v3, :cond_d

    monitor-exit p0

    return v1

    .line 541
    :cond_d
    :try_start_c
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v3, :cond_e

    monitor-exit p0

    return v1

    .line 542
    :cond_e
    :try_start_d
    iget-boolean v3, v2, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eq v3, v4, :cond_f

    monitor-exit p0

    return v1

    .line 543
    :cond_f
    :try_start_e
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v3, :cond_10

    monitor-exit p0

    return v1

    .line 544
    :cond_10
    :try_start_f
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_11

    monitor-exit p0

    return v1

    .line 545
    :cond_11
    :try_start_10
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_12

    monitor-exit p0

    return v1

    .line 547
    :cond_12
    :try_start_11
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eq v3, v4, :cond_13

    monitor-exit p0

    return v1

    .line 548
    :cond_13
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    :try_start_12
    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 549
    iget-object v4, v2, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez v4, :cond_14

    .line 550
    monitor-exit p0

    return v1

    .line 548
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    .end local v3    # "x":I
    .end local p0    # "this":Lccsancom/vungle/warren/model/Report;
    :cond_15
    :try_start_13
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eq v3, v4, :cond_16

    monitor-exit p0

    return v1

    .line 555
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "x":I
    :goto_1
    :try_start_14
    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 556
    iget-object v4, v2, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-nez v4, :cond_17

    .line 557
    monitor-exit p0

    return v1

    .line 555
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    .end local v3    # "x":I
    :cond_18
    :try_start_15
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eq v3, v4, :cond_19

    monitor-exit p0

    return v1

    .line 562
    :cond_19
    const/4 v3, 0x0

    .restart local v3    # "x":I
    :goto_2
    :try_start_16
    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 563
    iget-object v4, v2, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Report$UserAction;

    iget-object v5, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/vungle/warren/model/Report$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-nez v4, :cond_1a

    .line 564
    monitor-exit p0

    return v1

    .line 562
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 568
    .end local v3    # "x":I
    :cond_1b
    monitor-exit p0

    return v0

    .line 523
    .end local v2    # "wrap":Lccsancom/vungle/warren/model/Report;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 525
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1c
    :goto_3
    monitor-exit p0

    return v1
.end method

.method public getAdDuration()J
    .locals 2

    .line 295
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Report;->adDuration:J

    return-wide v0
.end method

.method public getAdStartTime()J
    .locals 2

    .line 467
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    return-wide v0
.end method

.method public getAdvertisementID()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 597
    iget v0, p0, Lccsancom/vungle/warren/model/Report;->status:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 7

    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 574
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 575
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 576
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 577
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 578
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 579
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 580
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->videoLength:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 581
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->adDuration:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 582
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 583
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 584
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 585
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 586
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 587
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 588
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 589
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 590
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 591
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 592
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    .line 593
    .end local v0    # "result":I
    .restart local v1    # "result":I
    monitor-exit p0

    return v1

    .line 572
    .end local v1    # "result":I
    .end local p0    # "this":Lccsancom/vungle/warren/model/Report;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCTAClicked()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z

    return v0
.end method

.method public declared-synchronized recordAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    new-instance v1, Lccsancom/vungle/warren/model/Report$UserAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lccsancom/vungle/warren/model/Report$UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local p0    # "this":Lccsancom/vungle/warren/model/Report;
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordError(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Lccsancom/vungle/warren/model/Report;
    .end local p1    # "description":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordProgress(I)V
    .locals 0
    .param p1, "viewed"    # I

    .line 273
    iput p1, p0, Lccsancom/vungle/warren/model/Report;->videoViewed:I

    .line 274
    return-void
.end method

.method public setAdDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 291
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Report;->adDuration:J

    .line 292
    return-void
.end method

.method public setAllAssetDownloaded(Z)V
    .locals 1
    .param p1, "allAssetDownloaded"    # Z

    .line 303
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Report;->playRemoteUrl:Z

    .line 304
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 601
    iput p1, p0, Lccsancom/vungle/warren/model/Report;->status:I

    .line 602
    return-void
.end method

.method public setTtDownload(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 299
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    .line 300
    return-void
.end method

.method public setVideoLength(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 282
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Report;->videoLength:J

    .line 283
    return-void
.end method

.method public declared-synchronized toReportBody()Lccsancom/google/gson/JsonObject;
    .locals 8

    monitor-enter p0

    .line 385
    :try_start_0
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 387
    .local v0, "request":Lccsancom/google/gson/JsonObject;
    const-string v1, "placement_reference_id"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "ad_token"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "app_id"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "incentivized"

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 391
    const-string v1, "header_bidding"

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->headerBidding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    const-string v1, "play_remote_assets"

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Report;->playRemoteUrl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    const-string v1, "adStartTime"

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 398
    iget-object v1, p0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    const-string v1, "url"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local p0    # "this":Lccsancom/vungle/warren/model/Report;
    :cond_1
    const-string v1, "adDuration"

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->adDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 403
    const-string v1, "ttDownload"

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->ttDownload:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 404
    const-string v1, "campaign"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "adType"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "templateId"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "init_timestamp"

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->initTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 409
    const-string v1, "asset_download_duration"

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report;->assetDownloadDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 411
    iget-object v1, p0, Lccsancom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    const-string v1, "ad_size"

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_2
    new-instance v1, Lccsancom/google/gson/JsonArray;

    invoke-direct {v1}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 417
    .local v1, "plays":Lccsancom/google/gson/JsonArray;
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 418
    .local v2, "playsObject":Lccsancom/google/gson/JsonObject;
    const-string v3, "startTime"

    iget-wide v4, p0, Lccsancom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 419
    iget v3, p0, Lccsancom/vungle/warren/model/Report;->videoViewed:I

    if-lez v3, :cond_3

    .line 420
    const-string v4, "videoViewed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 422
    :cond_3
    iget-wide v3, p0, Lccsancom/vungle/warren/model/Report;->videoLength:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 423
    const-string v5, "videoLength"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 425
    :cond_4
    new-instance v3, Lccsancom/google/gson/JsonArray;

    invoke-direct {v3}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 426
    .local v3, "userActionJson":Lccsancom/google/gson/JsonArray;
    iget-object v4, p0, Lccsancom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Report$UserAction;

    .line 427
    .local v5, "action":Lccsancom/vungle/warren/model/Report$UserAction;
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Report$UserAction;->toJson()Lccsancom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 428
    .end local v5    # "action":Lccsancom/vungle/warren/model/Report$UserAction;
    goto :goto_1

    .line 429
    :cond_5
    const-string v4, "userActions"

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 430
    invoke-virtual {v1, v2}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 431
    const-string v4, "plays"

    invoke-virtual {v0, v4, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 434
    new-instance v4, Lccsancom/google/gson/JsonArray;

    invoke-direct {v4}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 435
    .local v4, "errorsJson":Lccsancom/google/gson/JsonArray;
    iget-object v5, p0, Lccsancom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 436
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lccsancom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 437
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_2

    .line 438
    :cond_6
    const-string v5, "errors"

    invoke-virtual {v0, v5, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 441
    new-instance v5, Lccsancom/google/gson/JsonArray;

    invoke-direct {v5}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 442
    .local v5, "clicked":Lccsancom/google/gson/JsonArray;
    iget-object v6, p0, Lccsancom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 443
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lccsancom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 444
    .end local v7    # "s":Ljava/lang/String;
    goto :goto_3

    .line 445
    :cond_7
    const-string v6, "clickedThrough"

    invoke-virtual {v0, v6, v5}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 448
    iget-boolean v6, p0, Lccsancom/vungle/warren/model/Report;->incentivized:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 449
    const-string v6, "user"

    iget-object v7, p0, Lccsancom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_8
    iget v6, p0, Lccsancom/vungle/warren/model/Report;->ordinal:I

    if-lez v6, :cond_9

    .line 454
    const-string v7, "ordinal_view"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_9
    monitor-exit p0

    return-object v0

    .line 384
    .end local v0    # "request":Lccsancom/google/gson/JsonObject;
    .end local v1    # "plays":Lccsancom/google/gson/JsonArray;
    .end local v2    # "playsObject":Lccsancom/google/gson/JsonObject;
    .end local v3    # "userActionJson":Lccsancom/google/gson/JsonArray;
    .end local v4    # "errorsJson":Lccsancom/google/gson/JsonArray;
    .end local v5    # "clicked":Lccsancom/google/gson/JsonArray;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
