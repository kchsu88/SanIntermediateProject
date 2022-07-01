.class public final Lccsansan/ad/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:[B

.field private static getDownloadedList:[S

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:I


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

.field private getDownloadingList:Lccsansan/da/removeDownloadListener;

.field private removeDownloadListener:Lccsansan/da/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    const/16 v0, 0x69

    sput v0, Lccsansan/ad/removeDownloadListener;->unifiedDownload:I

    const v0, 0x1347dbd0

    sput v0, Lccsansan/ad/removeDownloadListener;->deleteDownItem:I

    const v0, -0x2d391b35

    sput v0, Lccsansan/ad/removeDownloadListener;->addDownloadListener:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ad/removeDownloadListener;->getDownloadStatusByUrl:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x5et
        -0x6at
        0x67t
        -0x6at
        0x6bt
        0x62t
        -0x63t
        -0x62t
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lccsansan/ad/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Z)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remote file stored in:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultRemoteFileStore"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p3}, Lccsansan/ad/removeDownloadListener;->addDownloadListener(Z)V

    if-eqz p3, :cond_0

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/ad/removeDownloadListener$unifiedDownload;

    const-string p3, "DefaultRemoteFileStore.removeFolder"

    invoke-direct {p2, p0, p3}, Lccsansan/ad/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/ad/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_0
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
    sget v2, Lccsansan/ad/removeDownloadListener;->unifiedDownload:I

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
    sget-object p4, Lccsansan/ad/removeDownloadListener;->getDownloadStatusByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/ad/removeDownloadListener;->addDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/ad/removeDownloadListener;->getDownloadedList:[S

    sget v6, Lccsansan/ad/removeDownloadListener;->addDownloadListener:I

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

    sget v2, Lccsansan/ad/removeDownloadListener;->addDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/ad/removeDownloadListener;->deleteDownItem:I

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
    sget-object p0, Lccsansan/ad/removeDownloadListener;->getDownloadStatusByUrl:[B

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
    sget-object p0, Lccsansan/ad/removeDownloadListener;->getDownloadedList:[S

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

.method private addDownloadListener()V
    .locals 5

    .line 40
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ".tmp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    const/16 v1, 0x3c

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 4
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 7
    :cond_2
    :pswitch_0
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v1, ".cache"

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1
    sget v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    const/16 v3, 0x11

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 1
    :catchall_1
    move-exception v0

    throw v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    const/16 v1, 0x56

    goto :goto_2

    :cond_4
    const/16 v1, 0x5e

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 9
    :goto_3
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 10
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 13
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v1, ".cloudthumbs"

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 28
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 8
    :pswitch_2
    sget v3, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 14
    :cond_7
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 15
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 16
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 19
    :cond_8
    :goto_5
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v3, ".data"

    invoke-static {v0, v3}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 28
    const/16 v3, 0x26

    goto :goto_6

    :cond_9
    const/16 v3, 0x46

    :goto_6
    packed-switch v3, :pswitch_data_3

    sget v3, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 20
    :cond_a
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 28
    sget v3, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    .line 21
    :cond_b
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 22
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 25
    :cond_c
    :pswitch_3
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v3, ".log"

    invoke-static {v0, v3}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    packed-switch v1, :pswitch_data_4

    :goto_8
    goto :goto_9

    .line 26
    :pswitch_4
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8
    sget v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_e

    .line 27
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 28
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    const/4 v0, 0x4

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    .line 8
    :catchall_2
    move-exception v0

    throw v0

    .line 27
    :cond_e
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 28
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 31
    :cond_f
    :goto_9
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v1, ".packaged"

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 32
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 33
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 34
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 37
    :cond_10
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v1, ".packageData"

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 38
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 28
    sget v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    .line 39
    :cond_11
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    .line 40
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    :cond_12
    nop

    .line 8
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 40
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private addDownloadListener(Z)V
    .locals 9

    .line 70
    nop

    .line 67
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    throw p1

    .line 52
    :cond_1
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    :pswitch_0
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 55
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Z

    .line 57
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v4, ".caches/.tmp/"

    invoke-static {v0, v4}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    .line 59
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v4, ".caches/.cache/"

    invoke-static {v0, v4}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    .line 61
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v4, ".caches/.cloudthumbs/"

    invoke-static {v0, v4}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    .line 63
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v4, ".caches/.log/"

    invoke-static {v0, v4}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    .line 65
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const v4, 0x2d391b36

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    add-int/2addr v7, v4

    const v4, -0x1347db6b

    invoke-static {v5, v6, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x6b

    int-to-byte v6, v6

    invoke-static {v5, v3, v3}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v5, v5, -0x6a

    invoke-static {v7, v8, v4, v6, v5}, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ad/removeDownloadListener;->getDownloadingList:Lccsansan/da/removeDownloadListener;

    .line 66
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->getDownloadingList:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 70
    :catchall_1
    move-exception p1

    throw p1

    .line 67
    :cond_3
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->getDownloadingList:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 70
    :goto_2
    nop

    .line 67
    :cond_4
    if-eqz p1, :cond_5

    .line 52
    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 70
    :pswitch_1
    invoke-direct {p0}, Lccsansan/ad/removeDownloadListener;->getDownloadingList()V

    .line 67
    sget p1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 70
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 2

    .line 71
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/ad/removeDownloadListener;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V

    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x2b

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/ad/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lccsansan/ad/removeDownloadListener;->addDownloadListener()V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 31
    nop

    .line 0
    if-eqz p3, :cond_3

    .line 27
    invoke-static {p1, p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p3, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p3, p3, 0x4b

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    sget p1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x50

    goto :goto_1

    :cond_2
    const/16 p1, 0x15

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-object p2

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_2
    invoke-static {p2}, Lccsansan/au/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 11

    .line 51
    nop

    .line 0
    const p3, 0x2d391b35

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/2addr v1, p3

    const p3, -0x1347db6c

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmpl-float v2, v3, v2

    add-int/2addr v2, p3

    invoke-static {v0}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    cmp-long p3, v8, v5

    int-to-short p3, p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x6b

    int-to-byte v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v8

    cmp-long v10, v8, v5

    rsub-int/lit8 v5, v10, -0x69

    invoke-static {v1, v2, p3, v3, v5}, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 32
    sget-object v1, Lccsansan/ad/removeDownloadListener$getDownloadingList;->getDownloadingList:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v7, :cond_1

    .line 51
    sget p1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 32
    :cond_0
    nop

    .line 37
    const-string p1, "can not create item dir by invalid type!"

    invoke-static {v0, p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(ZLjava/lang/String;)V

    return-object v4

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "apps/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_2
    iget-object p2, p0, Lccsansan/ad/removeDownloadListener;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {p2, p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 50
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 51
    sget p2, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0x63

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    .line 50
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p2

    :try_start_0
    array-length p3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    throw p1

    .line 50
    :cond_5
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p2

    if-nez p2, :cond_6

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    :cond_6
    :goto_2
    :pswitch_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 3

    .line 14
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    :goto_0
    const/16 v1, 0x13

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 6
    :cond_2
    invoke-static {p2}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :pswitch_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget p2, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0x35

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    .line 7
    :cond_3
    const-string p2, "unknown"

    .line 9
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x50

    if-le v0, v2, :cond_5

    .line 14
    goto :goto_1

    :cond_5
    const/16 v1, 0x4b

    :goto_1
    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 14
    sget v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 11
    :cond_6
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 12
    invoke-direct {p0, p1, p3, p2}, Lccsansan/ad/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lccsansan/ad/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 4
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3
    :cond_2
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 4
    sget v0, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 26
    sget p5, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, p5, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_5

    .line 7
    add-int/lit8 p5, p5, 0x41

    rem-int/lit16 p6, p5, 0x80

    sput p6, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_2

    .line 2
    sget-object p5, Lccsansan/ad/removeDownloadListener$getDownloadingList;->getDownloadingList:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p5, p5, p6

    if-eq p5, v1, :cond_1

    const/16 p5, 0x29

    goto :goto_0

    :cond_1
    const/16 p5, 0x2a

    :goto_0
    packed-switch p5, :pswitch_data_0

    goto :goto_1

    :cond_2
    sget-object p5, Lccsansan/ad/removeDownloadListener$getDownloadingList;->getDownloadingList:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p5, p5, p6

    if-eq p5, v1, :cond_4

    .line 26
    :pswitch_0
    sget p5, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p5, p5, 0x25

    rem-int/lit16 p6, p5, 0x80

    sput p6, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p5, p5, 0x2

    const-string p6, "."

    if-nez p5, :cond_3

    .line 7
    invoke-virtual {p3, p6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 26
    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_3
    nop

    .line 7
    invoke-virtual {p3, p6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    :goto_1
    const-string p3, ".apk"

    goto :goto_2

    .line 0
    :cond_5
    const-string p3, ""

    .line 12
    :goto_2
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_6

    .line 13
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "%%"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_8

    .line 26
    sget p4, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p4, p4, 0x57

    rem-int/lit16 p5, p4, 0x80

    sput p5, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p4, p4, 0x2

    if-nez p4, :cond_7

    .line 13
    :cond_7
    nop

    .line 15
    const-string p4, "%"

    const-string p5, "_"

    invoke-virtual {p2, p4, p5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    :cond_8
    :goto_3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 18
    invoke-static {p2}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_9
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 2
    const/16 p4, 0x49

    goto :goto_4

    :cond_a
    const/16 p4, 0x11

    :goto_4
    packed-switch p4, :pswitch_data_1

    .line 26
    const-string p2, "unknown"

    .line 21
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    const/16 p5, 0x50

    if-le p4, p5, :cond_b

    .line 2
    const/16 p4, 0x62

    goto :goto_5

    :cond_b
    const/16 p4, 0x58

    :goto_5
    const/4 p6, 0x0

    packed-switch p4, :pswitch_data_2

    goto :goto_6

    .line 7
    :pswitch_2
    sget p4, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/2addr p4, v1

    rem-int/lit16 v1, p4, 0x80

    sput v1, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    .line 21
    :cond_c
    nop

    .line 22
    invoke-virtual {p2, p6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 26
    nop

    .line 23
    :goto_6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-direct {p0, p1, v0, p2}, Lccsansan/ad/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1, p2, p6}, Lccsansan/ad/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    sget p2, Lccsansan/ad/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x6b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/ad/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_d

    :try_start_1
    array-length p2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :cond_d
    return-object p1

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_2
    .end packed-switch
.end method
