.class Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/co/getDownloadingCount$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/unifiedDownload;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/mads/base/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->unifiedDownload:I

    const-wide v0, -0x4ccae8611b78e18fL    # -5.127246391666711E-62

    sput-wide v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:J

    return-void
.end method

.method constructor <init>(Lccsancom/san/mads/base/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
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
.method public addDownloadListener()V
    .locals 4

    .line 5
    sget v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/unifiedDownload;

    iget-object v1, v0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsancom/san/mads/base/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/mads/base/unifiedDownload;Lccsansan/dt/removeDownloadListener;)V

    const-string v0, "Mads.HandleLoader"

    const-string v1, "\u1e52\u71fa\uc1d6\u51b6\ua199\u3172\u8146\u110a\u6108\uf0fe\u40c6\ud0c6\u20b0\ub0a0z\u904f\ue035\u704a\uc3ae\u5388\ua39b\u338f\u8380\u1360\u6319\uf32a\u431e\ud2f2\u22d6\ub2a3\u02cb\u926d\ue27f\u7256\uc277\u521c\ua5f2\u35c9\u85ad\u1588\u6566\uf54b\u452b\ud570\u2506\ub4e3\u04d8\u94bf\ue484\u7471\uc454\u5466"

    const-string v2, ""

    invoke-static {v2}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int v2, v2, 0x6fe2

    invoke-static {v1, v2}, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/unifiedDownload;

    new-instance v2, Lccsancom/san/ads/AdError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-direct {v2, v3, v0}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    :goto_0
    sget v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x4d

    goto :goto_1

    :cond_1
    const/16 v0, 0x53

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/16 v0, 0x63

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/unifiedDownload;

    new-instance v1, Lccsancom/san/ads/AdError;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    sget p1, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x52

    goto :goto_0

    :cond_0
    const/16 p1, 0x55

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x1e

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
