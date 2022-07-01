.class Lccsansan/co/trackReportClick$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cn/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/co/trackReportClick;->unifiedDownload(Lccsansan/co/resolveUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/co/resolveUrl;

.field final synthetic removeDownloadListener:Lccsansan/co/trackReportClick;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/co/trackReportClick$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/co/trackReportClick$unifiedDownload;->IncentiveDownloadUtils:I

    const-wide v0, 0x1c9de57bdfd54752L    # 7.736092933367736E-171

    sput-wide v0, Lccsansan/co/trackReportClick$unifiedDownload;->getDownloadingList:J

    return-void
.end method

.method constructor <init>(Lccsansan/co/trackReportClick;Lccsansan/co/resolveUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/co/trackReportClick$unifiedDownload;->removeDownloadListener:Lccsansan/co/trackReportClick;

    iput-object p2, p0, Lccsansan/co/trackReportClick$unifiedDownload;->addDownloadListener:Lccsansan/co/resolveUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/co/trackReportClick$unifiedDownload;->getDownloadingList:J

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
.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 5
    nop

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-static {p3, p3}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p4

    rsub-int p4, p4, 0x47ed

    const-string v0, "\u4736\u00d0\uc8ff\u90fb\u58c6\u209f\ue8b3\ub048\u785e\uc027\u8863\u5008\u182d\ue038\ua9c1\u71c2\u39f1\u81cf"

    invoke-static {v0, p4}, Lccsansan/co/trackReportClick$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Ad.VastManager"

    invoke-static {p4, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lccsansan/co/trackReportClick$unifiedDownload;->addDownloadListener:Lccsansan/co/resolveUrl;

    invoke-virtual {p1, p2}, Lccsansan/co/resolveUrl;->deleteDownItem(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lccsansan/co/trackReportClick$unifiedDownload;->removeDownloadListener:Lccsansan/co/trackReportClick;

    invoke-static {p1}, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils(Lccsansan/co/trackReportClick;)Lccsansan/co/trackReportClick$addDownloadListener;

    move-result-object p1

    iget-object p2, p0, Lccsansan/co/trackReportClick$unifiedDownload;->addDownloadListener:Lccsansan/co/resolveUrl;

    invoke-interface {p1, p2}, Lccsansan/co/trackReportClick$addDownloadListener;->a(Lccsansan/co/resolveUrl;)V

    sget p1, Lccsansan/co/trackReportClick$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/co/trackReportClick$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x40

    :try_start_0
    div-int/2addr p1, p3
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

.method public removeDownloadListener(Ljava/lang/String;Lccsansan/cn/removeDownloadListener;)V
    .locals 2

    .line 2
    nop

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0xba79

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    const-string v1, "\u4736\ufd44\u33d7\u6857\uae96\ue363\u19eb\u5e7c\u94fe\uc933\u0f8d\u4413\ufa8c\u3f18\u75be\uaa65"

    invoke-static {v1, v0}, Lccsansan/co/trackReportClick$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ad.VastManager"

    invoke-static {p2, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lccsansan/co/trackReportClick$unifiedDownload;->removeDownloadListener:Lccsansan/co/trackReportClick;

    invoke-static {p1}, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils(Lccsansan/co/trackReportClick;)Lccsansan/co/trackReportClick$addDownloadListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lccsansan/co/trackReportClick$addDownloadListener;->a(Lccsansan/co/resolveUrl;)V

    sget p1, Lccsansan/co/trackReportClick$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/co/trackReportClick$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x6

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
