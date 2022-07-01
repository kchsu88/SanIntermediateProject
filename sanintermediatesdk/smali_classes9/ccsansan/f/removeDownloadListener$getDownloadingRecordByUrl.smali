.class Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadStatusByUrl:[S

.field private static getDownloadedList:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[B


# instance fields
.field final synthetic addDownloadListener:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    const/16 v0, 0x13

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->removeDownloadListener:I

    const v0, -0x5048262c

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:I

    const v0, 0x3cf4e513

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        -0x2t
        0x2dt
        0xat
        0x1t
        0x38t
        0x35t
        0x74t
        -0x41t
        0x5t
        0x64t
        -0x37t
        0x1bt
        0x1dt
        0xbt
        0x74t
        -0x3bt
        0x7t
        0x2dt
        0x31t
        -0x3t
        0x2et
        0x7bt
        -0x39t
        0x7t
        0x33t
        0x2t
        0x2at
        0x0t
    .end array-data
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/f/removeDownloadListener;

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
    sget v2, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->removeDownloadListener:I

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
    sget-object p4, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadStatusByUrl:[S

    sget v6, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

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

    sget v2, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:I

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
    sget-object p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:[B

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
    sget-object p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadStatusByUrl:[S

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
    .locals 7

    .line 4
    nop

    .line 1
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    .line 4
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lccsansan/aa/getDownloadingList;->addDownloadListener()Z

    move-result v0

    const/16 v2, 0x53

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/aa/getDownloadingList;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    const/16 v0, 0x56

    goto :goto_1

    :cond_2
    const/16 v0, 0x2f

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 2
    :goto_2
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    const v2, -0x3cf4e513

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    const v3, 0x50482681

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    const v3, -0x100001d

    invoke-static {v1, v1, v1}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-short v3, v3

    const-string v5, ""

    invoke-static {v5, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    int-to-byte v1, v1

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, 0xa

    invoke-static {v2, v4, v3, v1, v5}, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    const-string v1, "Saving"

    invoke-static {v0, v1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    :goto_3
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/16 v0, 0x59

    goto :goto_4

    :cond_4
    const/16 v0, 0x20

    :goto_4
    packed-switch v0, :pswitch_data_2

    return-void

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch
.end method
