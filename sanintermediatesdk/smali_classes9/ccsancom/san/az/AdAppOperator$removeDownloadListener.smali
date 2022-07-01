.class Lccsancom/san/az/AdAppOperator$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/AdAppOperator;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:[B

.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:[S

.field private static getDownloadingList:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedList:I

    const/4 v0, 0x4

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->unifiedDownload:I

    const v0, 0x6054084d

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadingList:I

    const v0, -0x4f6a0d1c

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->removeDownloadListener:I

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->addDownloadListener:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x61t
        -0x6ct
        0x72t
        -0x62t
        -0x66t
        -0x66t
        -0x6bt
        0x6et
        0x60t
        -0x67t
        0x6at
        -0x74t
        0x61t
        0x65t
        -0x64t
        0x62t
        0x6at
        -0x66t
        -0x62t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/az/AdAppOperator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static addDownloadListener(ISIIB)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->unifiedDownload:I

    add-int/2addr p3, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p3, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p3, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->addDownloadListener:[B

    if-eqz p3, :cond_1

    .line 1211
    sget v6, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->removeDownloadListener:I

    add-int/2addr v6, p2

    aget-byte p3, p3, v6

    add-int/2addr p3, v2

    int-to-byte p3, p3

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p3, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedRecordByUrl:[S

    sget v6, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->removeDownloadListener:I

    add-int/2addr v6, p2

    aget-short p3, p3, v6

    add-int/2addr p3, v2

    int-to-short p3, p3

    .line 1223
    :cond_2
    :goto_1
    if-lez p3, :cond_5

    .line 1226
    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    sget v2, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->removeDownloadListener:I

    add-int/2addr p2, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p2, v4

    sput p2, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p4, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p2, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadingList:I

    add-int/2addr p0, p2

    int-to-char p0, p0

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

    if-ge p0, p3, :cond_5

    .line 1238
    sget-object p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->addDownloadListener:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p2, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p2

    .line 1241
    sget-char p2, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p1

    int-to-byte p0, p0

    sget-byte p4, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p4

    add-int/2addr p2, p0

    int-to-char p0, p2

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedRecordByUrl:[S

    sget p2, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p2

    .line 1246
    sget-char p2, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p1

    int-to-short p0, p0

    sget-byte p4, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p4

    add-int/2addr p2, p0

    int-to-char p0, p2

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
.method public callBack(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    sget p1, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1, v0, v0}, Lccsanandroid/app/Activity;->overridePendingTransition(II)V

    sget p1, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    sget v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-static {v1}, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils(Lccsancom/san/az/AdAppOperator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lccsansan/p/getDownloadedList;

    .line 2
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-static {v2}, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils(Lccsancom/san/az/AdAppOperator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    const v2, -0x605407df

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    sub-int/2addr v2, v4

    const-string v4, ""

    invoke-static {v4, v3, v3}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    int-to-short v3, v3

    const v4, 0x4f6a0d1d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    sub-int/2addr v4, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    add-int/lit8 v10, v10, -0x62

    int-to-byte v6, v10

    invoke-static {v2, v3, v4, v5, v6}, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->addDownloadListener(ISIIB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-static {v3}, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils(Lccsancom/san/az/AdAppOperator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v1, v3, v2}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    sget v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
