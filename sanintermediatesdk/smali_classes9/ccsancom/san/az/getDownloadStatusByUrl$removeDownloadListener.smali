.class final Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadStatusByUrl:I

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:[C

    const-wide v0, 0x2baa3aae5592488aL    # 2.398373659915282E-98

    sput-wide v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x3f15s
        -0x7795s
        0x51ffs
        0x1959s
        -0x1d27s
        -0x55bcs
        0x73d7s
        0x3b2as
        -0x7b57s
        0x4c2es
        0x1590s
        -0x22d7s
        -0x5971s
        0x6feas
        0x3771s
        -0x7f20s
        0x2aabs
        0x6235s
        -0x4456s
        -0xcc5s
        0x8b1s
        0x400cs
        -0x6669s
        -0x2e82s
        0x6eees
        -0x59afs
        -0x22s
        0x3754s
        0x4c92s
        -0x7a46s
        -0x22dds
        0x6aafs
        -0x5de1s
        -0x474s
        0x330as
        0x48c9s
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(CII)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p1, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p1, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p2

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p0

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
.method public unifiedDownload(ZLjava/lang/String;)V
    .locals 7

    .line 9
    nop

    .line 2
    sget p2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x11

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 9
    sget p2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x61

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    .line 2
    const/16 p2, 0x62

    goto :goto_1

    :cond_2
    const/16 p2, 0x63

    :goto_1
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    packed-switch p2, :pswitch_data_1

    const/16 p2, 0x4e

    :try_start_0
    div-int/2addr p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    const-string v1, ""

    if-nez p1, :cond_4

    .line 2
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 5
    :cond_3
    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v3, "mode"

    const-string v4, "direct_active"

    invoke-virtual {v2, v3, v4}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const v4, 0xc098

    invoke-static {v1, v0, v0}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    add-int/lit8 v5, v5, 0x10

    const/high16 v6, 0x1000000

    invoke-static {v0, v0, v0}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v4, v5, v0}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener(CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    .line 9
    nop

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, "OpenAppHelperEx"

    cmpl-float v2, v2, v3

    add-int/lit16 v2, v2, 0x2ac9

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x14

    const/16 v5, 0x30

    invoke-static {v1, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-static {v2, v3, v1}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener(CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;ZLccsanandroid/content/Context;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
