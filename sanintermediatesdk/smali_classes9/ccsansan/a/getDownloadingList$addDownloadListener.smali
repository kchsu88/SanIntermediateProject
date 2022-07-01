.class Lccsansan/a/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/a/getDownloadingList;->addDownloadListener(Lccsansan/m/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:[B

.field private static getDownloadedCount:[S

.field private static getDownloadedList:I

.field private static getDownloadingCount:I

.field private static getDownloadingRecordByUrl:I

.field private static pause:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadedRecordByUrl:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/m/getDownloadedList;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/a/getDownloadingList$addDownloadListener;->pause:I

    const/16 v0, 0x1f

    sput v0, Lccsansan/a/getDownloadingList$addDownloadListener;->deleteDownItem:I

    const v0, -0x35074fb

    sput v0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedList:I

    const v0, -0x6a7ce338

    sput v0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x52t
        -0x4ct
        0x58t
        0x5ct
        0x5ct
        0x5ct
        0x5at
        0x0t
    .end array-data
.end method

.method constructor <init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadedList;

    iput-object p5, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p6, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p7, p0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

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
    sget v2, Lccsansan/a/getDownloadingList$addDownloadListener;->deleteDownItem:I

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
    sget-object p4, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedCount:[S

    sget v6, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

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

    sget v2, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedList:I

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
    sget-object p0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

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
    sget-object p0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedCount:[S

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 26

    move-object/from16 v1, p0

    .line 7
    sget v0, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/a/getDownloadingList$addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const v5, 0x350755c

    const v6, 0x6a7ce338

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :pswitch_0
    iget-object v0, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x0

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 3
    :goto_3
    iget-object v7, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v0, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadedList;

    iget-object v8, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v9, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v10, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v11, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v15, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-object v0, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const-string v12, ""

    const-string v13, "success"

    const-string v14, ""

    cmpl-float v2, v2, v4

    sub-int/2addr v6, v2

    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v12}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x59

    int-to-byte v5, v5

    invoke-static {v12, v3}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x16

    invoke-static {v6, v2, v4, v5, v3}, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 7
    :cond_2
    :pswitch_1
    iget-object v0, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v2, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadedList;

    iget-object v7, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v8, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v9, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v10, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v2, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-object v11, v1, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v12

    sub-int/2addr v6, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    sub-int/2addr v5, v12

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v12

    const-string v22, "fail"

    const-string v23, "deeplink false or not for this app"

    cmpl-float v4, v12, v4

    int-to-short v4, v4

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x59

    int-to-byte v12, v12

    invoke-static {v3}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x16

    invoke-static {v6, v5, v4, v12, v3}, Lccsansan/a/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v24, v2

    move-object/from16 v25, v11

    invoke-static/range {v16 .. v25}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget v0, Lccsansan/a/getDownloadingList$addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/a/getDownloadingList$addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x4c

    goto :goto_4

    :cond_3
    const/16 v0, 0x63

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 7
    :pswitch_2
    nop

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
    .end packed-switch
.end method
