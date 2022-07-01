.class Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:J


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:I

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:[C

    const-wide v0, -0x5beaa290588daef2L    # -7.348598885152699E-135

    sput-wide v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:J

    return-void

    nop

    :array_0
    .array-data 2
        0xae3s
        0x5be7s
        -0x5701s
        -0x61bs
        0x4ec1s
        -0x6048s
        -0x1349s
        0x3d86s
        -0x7d7fs
        -0x2c7es
        0x2070s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p0, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p0, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p2

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 4
    sget v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    iget-object v2, v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-object v1, v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    iget-object v0, v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    iget-object v0, v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0xc

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    add-int/lit16 v2, v2, 0xa8f

    int-to-char v2, v2

    invoke-static {v4, v3, v3}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    invoke-static {v1, v2, v4}, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    iget-object v0, v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(Lccsansan/p/getDownloadedList;)V

    sget v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x21

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method
