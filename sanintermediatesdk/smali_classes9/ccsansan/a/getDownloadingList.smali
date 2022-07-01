.class public Lccsansan/a/getDownloadingList;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:[S

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:[B

.field private static getDownloadingRecordByUrl:I

.field private static final removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static unifiedDownload:I


# instance fields
.field private final addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    const/4 v1, 0x1

    sput v1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/a/getDownloadingList;->unifiedDownload()V

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsansan/a/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    sget v1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v1, 0x32

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/a/getDownloadingList;->addDownloadListener:Ljava/util/List;

    return-void
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsansan/a/getDownloadingList;->getDownloadedRecordByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/a/getDownloadingList;->unifiedDownload:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/a/getDownloadingList;->getDownloadStatusByUrl:[S

    sget v6, Lccsansan/a/getDownloadingList;->unifiedDownload:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsansan/a/getDownloadingList;->unifiedDownload:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/a/getDownloadingList;->getDownloadedList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsansan/a/getDownloadingList;->getDownloadedRecordByUrl:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsansan/a/getDownloadingList;->getDownloadStatusByUrl:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static synthetic IncentiveDownloadUtils()Ljava/util/Map;
    .locals 2

    .line 3
    sget v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/a/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/a/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/a/getDownloadingList$removeDownloadListener;

    const-string v2, "AD.CPIReceiver.Add"

    invoke-direct {v1, p0, v2, p1, p2}, Lccsansan/a/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/a/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsansan/a/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/a/getDownloadingList;)Z
    .locals 2

    .line 1
    sget v0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p0, p0, Lccsansan/a/getDownloadingList;->getDownloadingList:Z

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xd

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/m/getDownloadedList;)V
    .locals 12

    .line 14
    nop

    .line 0
    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v1, "ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8
    :cond_2
    const-string v0, "deepLinkUrl"

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    const-string v0, "placement_id"

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 13
    const-string v0, "creativeid"

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v3, Lccsansan/a/getDownloadingList$addDownloadListener;

    move-object v4, v3

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v11}, Lccsansan/a/getDownloadingList$addDownloadListener;-><init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_3
    :pswitch_0
    sget p1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/a/getDownloadingList;)Ljava/util/List;
    .locals 2

    .line 1
    sget v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/a/getDownloadingList;->addDownloadListener:Ljava/util/List;

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private getDownloadingList()V
    .locals 4

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/a/getDownloadingList$getDownloadingList;

    const-wide/16 v2, 0x7d0

    invoke-direct {v1, p0, v2, v3}, Lccsansan/a/getDownloadingList$getDownloadingList;-><init>(Lccsansan/a/getDownloadingList;J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 39
    nop

    .line 15
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-direct/range {p0 .. p2}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 32
    const/16 v4, 0x22

    goto :goto_0

    :cond_1
    const/16 v4, 0x33

    :goto_0
    const-wide/16 v5, 0x0

    const-string v7, ""

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 18
    :pswitch_1
    const v4, 0x4fe7c7ce

    invoke-static {v11, v11}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    const-string v14, "1"

    cmp-long v15, v12, v5

    add-int/2addr v15, v4

    const v4, 0x6e782649

    invoke-static {v11, v11}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v12

    add-int/2addr v12, v4

    invoke-static {v11, v9, v9}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v4, v4, v9

    int-to-short v4, v4

    invoke-static {v7, v8}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v13

    add-int/2addr v13, v10

    int-to-byte v13, v13

    invoke-static {v7, v8}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v16

    add-int/lit8 v8, v16, -0x4a

    invoke-static {v15, v12, v4, v13, v8}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 19
    const/4 v4, 0x1

    goto :goto_3

    :goto_2
    const/4 v4, 0x0

    :goto_3
    const-string v8, "AppPkgReceiver"

    if-eqz v3, :cond_7

    .line 20
    iget-object v12, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 39
    sget v12, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v12, v12, 0x5

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v13, 0x2

    rem-int/2addr v12, v13

    if-nez v12, :cond_3

    .line 20
    :cond_3
    iget v12, v3, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v14, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v14}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v14

    if-eq v12, v14, :cond_7

    .line 32
    sget v12, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v12, v12, 0x53

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/2addr v12, v13

    if-nez v12, :cond_4

    .line 20
    :cond_4
    iget v12, v3, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v14, Lccsansan/m/getDownloadedList$unifiedDownload;->ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    .line 21
    invoke-virtual {v14}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v14

    if-eq v12, v14, :cond_7

    if-eqz v4, :cond_7

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x4fe7c7da

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    sub-int/2addr v12, v14

    invoke-static {v11, v11}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    const v15, 0x6e78264e

    add-int/2addr v14, v15

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v16

    const-string v17, "a_s"

    cmpl-float v13, v16, v9

    int-to-short v13, v13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v16

    shr-int/lit8 v11, v16, 0x10

    int-to-byte v11, v11

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v16

    cmpl-float v9, v16, v9

    add-int/lit8 v9, v9, -0x22

    invoke-static {v12, v14, v13, v11, v9}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->unifiedDownload()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-boolean v10, v1, Lccsansan/a/getDownloadingList;->getDownloadingList:Z

    .line 24
    iget-object v4, v1, Lccsansan/a/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lccsansan/m/getDownloadedList;->shouldTryHandlingAction:Z

    .line 25
    iput-boolean v10, v3, Lccsansan/m/getDownloadedList;->ActionTypeDetailPage:Z

    .line 27
    invoke-static {v0, v3, v2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V

    .line 28
    invoke-static/range {v17 .. v17}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x4fe7c810

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    sub-int/2addr v9, v11

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    add-int/2addr v5, v15

    const/16 v6, 0x30

    invoke-static {v6}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    rsub-int/lit8 v11, v11, 0x30

    int-to-short v11, v11

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v12

    shr-int/lit8 v12, v12, 0x16

    int-to-byte v12, v12

    const/4 v13, 0x0

    invoke-static {v7, v6, v13}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x34

    invoke-static {v9, v5, v11, v12, v6}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->unifiedDownload()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 32
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :goto_4
    packed-switch v4, :pswitch_data_2

    :goto_5
    goto/16 :goto_7

    .line 31
    :pswitch_2
    if-eqz v3, :cond_8

    .line 39
    sget v3, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 32
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    const/4 v3, 0x1

    :goto_6
    const-string v4, "package_added"

    packed-switch v3, :pswitch_data_3

    .line 31
    nop

    .line 32
    invoke-static {v2, v4}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 39
    :pswitch_3
    nop

    .line 32
    invoke-static {v2, v4}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    const/4 v4, 0x0

    :try_start_0
    div-int/2addr v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 39
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 35
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlerPackageAdd() open false info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v3, 0x4fe7c835

    const/4 v6, 0x0

    invoke-static {v6, v6}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    sub-int/2addr v3, v7

    const v7, 0x6e782612

    invoke-static {v6}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v11

    cmpl-float v6, v11, v9

    add-int/2addr v6, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    const/16 v11, 0x30

    invoke-static {v11}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    rsub-int/lit8 v11, v11, -0x14

    invoke-static {v3, v6, v7, v9, v11}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    nop

    .line 38
    :cond_8
    :goto_7
    new-instance v3, Lccsansan/cy/getDownloadingList;

    invoke-direct {v3, v0, v2}, Lccsansan/cy/getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v2}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    .line 39
    invoke-static {v10}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lccsansan/a/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sget p0, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x37

    goto :goto_0

    :cond_1
    const/16 p0, 0x39

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/a/getDownloadingList$unifiedDownload;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/a/getDownloadingList$unifiedDownload;-><init>(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/a/getDownloadingList;Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/a/getDownloadingList;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x62

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x59

    sput v0, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils:I

    const v0, -0x6e7825e6

    sput v0, Lccsansan/a/getDownloadingList;->getDownloadedList:I

    const v0, -0x4fe7c7cd

    sput v0, Lccsansan/a/getDownloadingList;->unifiedDownload:I

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/a/getDownloadingList;->getDownloadedRecordByUrl:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0xbt
        0x5t
        -0xct
        0x8t
        -0x6t
        -0x3t
        0x9t
        -0x1dt
        0x1dt
        -0x45t
        -0xbt
        -0x9t
        0x25t
        -0x20t
        0x2t
        0x11t
        -0x13t
        0x21t
        -0x1ct
        -0x5t
        -0x1t
        0x14t
        0x41t
        -0x4ct
        0x0t
        0xbt
        -0x13t
        0x1t
        0x5t
        0x5t
        0xat
        -0x14t
        0xft
        0x3t
        0x14t
        0x2dt
        -0x53t
        -0x1t
        0x13t
        -0x13t
        0x1t
        0x53t
        -0x9t
        0x1t
        -0x3ct
        0x0t
        0x23t
        -0x24t
        -0x2t
        0x6t
        -0xat
        0x8t
        0x2t
        0x11t
        -0x22t
        0xdt
        -0x7t
        0x8t
        -0xat
        0xdt
        -0x7t
        -0x1dt
        0x1dt
        -0x45t
        -0x7t
        0xat
        0x1t
        -0xdt
        0x29t
        -0x2ft
        0x2t
        0x11t
        -0x13t
        0x21t
        -0x1ct
        -0x5t
        -0x1t
        0x14t
        0x41t
        -0x9t
        0x1t
        -0x3ct
        0x0t
        0x23t
        -0x24t
        -0x2t
        0x6t
        -0xat
        0x8t
        0x2t
        0x11t
        -0x22t
        0xdt
        -0x7t
        0x8t
        -0xat
        0xdt
        -0x7t
        -0x1dt
        0x1dt
        -0x44t
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0x2bt
        -0x27t
        0x8t
        -0x6t
        -0x3t
        0x29t
        -0x30t
        0x12t
        -0x7t
        0x48t
        -0xct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;

    const-string v2, "AD.CPIReceiver.Upgrade"

    invoke-direct {v1, p0, v2, p1, p2}, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;-><init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x38

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 5
    sget v0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/a/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x23

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p0, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x6

    goto :goto_1

    :cond_1
    const/16 p0, 0x32

    :goto_1
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 7

    .line 27
    nop

    .line 1
    invoke-static {}, Lccsansan/bl/addDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    const/16 v1, 0x33

    const/4 v2, 0x0

    const-string v3, "AppPkgReceiver"

    if-nez v0, :cond_1

    .line 27
    sget p1, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    add-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const-string p2, "onReceive() return: SDK has not been initialized"

    if-nez p1, :cond_0

    .line 2
    invoke-static {v3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x4b

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_0
    nop

    .line 2
    invoke-static {v3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 2
    :cond_1
    if-eqz p2, :cond_8

    .line 6
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 9
    :cond_2
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    return-void

    .line 12
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() dataStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 17
    :cond_4
    iput-boolean v2, p0, Lccsansan/a/getDownloadingList;->getDownloadingList:Z

    .line 18
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    goto :goto_1

    :cond_5
    const/16 v1, 0x3b

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 21
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 18
    :pswitch_0
    nop

    .line 19
    const-string p2, "onReceive() action: android.intent.action.PACKAGE_ADDED"

    invoke-static {v3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lccsansan/a/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 22
    :goto_2
    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_1

    :goto_4
    goto :goto_6

    .line 2
    :pswitch_1
    sget p1, Lccsansan/a/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/a/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    .line 22
    const/16 p1, 0x2b

    goto :goto_5

    :cond_7
    const/16 p1, 0xe

    :goto_5
    packed-switch p1, :pswitch_data_2

    iget-object p1, p0, Lccsansan/a/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :pswitch_2
    iget-object p1, p0, Lccsansan/a/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x11

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 2
    :catchall_1
    move-exception p1

    throw p1

    .line 25
    :goto_6
    invoke-direct {p0, v0}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lccsansan/a/getDownloadingList;->getDownloadingList()V

    :cond_8
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_2
    .end packed-switch
.end method
