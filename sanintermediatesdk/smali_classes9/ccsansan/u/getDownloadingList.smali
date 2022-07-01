.class public Lccsansan/u/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static deleteDownItem:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:[S

.field private static unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/u/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/u/getDownloadingList;->deleteDownItem:I

    const/16 v0, 0x70

    sput v0, Lccsansan/u/getDownloadingList;->IncentiveDownloadUtils:I

    const v0, 0x535913a8

    sput v0, Lccsansan/u/getDownloadingList;->getDownloadingList:I

    const v0, -0x6c711fae

    sput v0, Lccsansan/u/getDownloadingList;->addDownloadListener:I

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/u/getDownloadingList;->unifiedDownload:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x47t
        -0x7t
        0x5t
        0x5t
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0x2bt
        -0x68t
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0xbt
    .end array-data
.end method

.method private static addDownloadListener(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/u/getDownloadingList;->IncentiveDownloadUtils:I

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
    sget-object p4, Lccsansan/u/getDownloadingList;->unifiedDownload:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/u/getDownloadingList;->addDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/u/getDownloadingList;->removeDownloadListener:[S

    sget v6, Lccsansan/u/getDownloadingList;->addDownloadListener:I

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

    sget v2, Lccsansan/u/getDownloadingList;->addDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/u/getDownloadingList;->getDownloadingList:I

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
    sget-object p0, Lccsansan/u/getDownloadingList;->unifiedDownload:[B

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
    sget-object p0, Lccsansan/u/getDownloadingList;->removeDownloadListener:[S

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

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 16
    nop

    .line 1
    invoke-static {p0}, Lccsansan/u/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lccsanandroid/app/DownloadManager$Request;

    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/app/DownloadManager$Request;-><init>(Lccsanandroid/net/Uri;)V

    .line 3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Lccsanandroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x6c711fae

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    const v6, -0x53591364

    const/4 v7, 0x0

    invoke-static {v7}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    shr-int/lit8 v8, v8, 0x6

    sub-int/2addr v6, v8

    invoke-static {v7, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-string v12, ""

    cmp-long v13, v8, v10

    rsub-int/lit8 v8, v13, -0x1

    int-to-short v8, v8

    invoke-static {v7}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v9

    add-int/2addr v9, v2

    int-to-byte v9, v9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, -0x71

    invoke-static {v5, v6, v8, v9, v10}, Lccsansan/u/getDownloadingList;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Lccsanandroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p1}, Lccsanandroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Lccsanandroid/app/DownloadManager$Request;->setNotificationVisibility(I)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v3

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    sget-object v5, Lccsanandroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lccsanandroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/DownloadManager$Request;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lccsanandroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const v3, 0x6c711fba

    invoke-static {v12, v7}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, -0x53591344

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    invoke-static {v7}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v7, v7}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v8

    rsub-int/lit8 v8, v8, -0x71

    invoke-static {v3, v5, v4, v6, v8}, Lccsansan/u/getDownloadingList;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/DownloadManager;

    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 13
    :pswitch_0
    invoke-virtual {v0, v1}, Lccsanandroid/app/DownloadManager;->enqueue(Lccsanandroid/app/DownloadManager$Request;)J

    .line 16
    sget v0, Lccsansan/u/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/u/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x22

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do xz, mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", url: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XzManagerUtil"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/u/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/u/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 22
    nop

    .line 17
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 17
    nop

    .line 19
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 22
    :pswitch_0
    sget p0, Lccsansan/u/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/u/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 17
    :pswitch_1
    goto :goto_2

    .line 22
    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const-string p0, "unknown"

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_2

    sget v3, Lccsansan/u/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/u/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 19
    :cond_3
    nop

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :pswitch_2
    nop

    .line 22
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
