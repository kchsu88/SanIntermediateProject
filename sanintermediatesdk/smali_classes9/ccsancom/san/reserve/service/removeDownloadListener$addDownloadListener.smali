.class Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:J

.field private static getDownloadingList:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[C


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    const/16 v0, 0x38

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->unifiedDownload:[C

    const-wide v0, -0x3c7e675c9fd48217L    # -1.58492866068331808E17

    sput-wide v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->addDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x3e30s
        -0x43c3s
        0x3a61s
        -0x47fcs
        0x366cs
        -0x4b89s
        0x32c9s
        -0x4f49s
        0x2ebes
        -0x533es
        0x2ae9s
        -0x5744s
        0x2717s
        -0x5adbs
        0x2356s
        -0x5eaas
        0x1f63s
        -0x6277s
        0x1b9cs
        -0x6650s
        0x178bs
        -0x6a11s
        0x13f6s
        -0x71e3s
        0xc22s
        -0x75d0s
        0x841s
        -0x7981s
        0x4c3s
        -0x7d6as
        0xb0s
        -0x124s
        0x7cdas
        -0x51cs
        0x794ds
        0x4fs
        0x7da2s
        -0x402s
        0x799bs
        -0x80ds
        0x75e8s
        -0xcaas
        0x7128s
        -0x10dfs
        0x6d5ds
        -0x148as
        0x6923s
        -0x1978s
        0x64bas
        -0x1d37s
        0x60c9s
        -0x2104s
        0x5c16s
        -0x25fds
        0x582fs
        -0x29ecs
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/reserve/service/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->unifiedDownload:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->addDownloadListener:J

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
.method public callBackOnUIThread()V
    .locals 6

    .line 4
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "wait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    .line 2
    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x23

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v1, v5

    invoke-static {v3, v4, v1}, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    goto :goto_4

    .line 2
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    const v1, 0xc19f

    packed-switch v0, :pswitch_data_1

    .line 4
    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x53

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const/16 v2, 0x56

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x3d

    shr-int/2addr v2, v4

    invoke-static {v0, v1, v2}, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, v3}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    goto :goto_3

    .line 1
    :pswitch_1
    invoke-static {v3, v3}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    sub-int/2addr v1, v3

    int-to-char v1, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x23

    invoke-static {v0, v1, v3}, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, v2}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    .line 4
    :goto_3
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
