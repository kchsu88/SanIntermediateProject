.class Lccsansan/f/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsansan/f/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 3

    .line 6
    sget p1, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x7b

    or-int/lit8 v1, p1, 0x7b

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    instance-of v0, p2, Lccsansan/f/removeDownloadListener$trackReportClick;

    if-nez v0, :cond_1

    .line 6
    const/16 p2, 0x5b

    xor-int/lit8 v0, p1, 0x5b

    and-int/lit8 v1, p1, 0x5b

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, -0x5c

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    neg-int p1, p1

    or-int p2, v0, p1

    shl-int/lit8 p2, p2, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    check-cast p2, Lccsansan/f/removeDownloadListener$trackReportClick;

    invoke-virtual {p2}, Lccsansan/f/removeDownloadListener$trackReportClick;->unifiedDownload()Lccsansan/f/removeDownloadListener;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;Lccsancom/san/xz/api/IDownloadService;)Lccsancom/san/xz/api/IDownloadService;

    .line 5
    iget-object p1, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {p1}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;

    move-result-object p1

    iget-object p2, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {p2}, Lccsansan/f/getDownloadingList;->getDownloadingList(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/unifiedDownload;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/san/xz/api/IDownloadService;->addListener(Lccsancom/san/xz/api/unifiedDownload;)V

    .line 6
    iget-object p1, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {p1}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Lccsansan/f/getDownloadingList;)V

    sget p1, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    xor-int/lit8 p2, p1, 0x23

    and-int/lit8 v0, p1, 0x23

    or-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 p1, p1, 0x23

    and-int/2addr p1, v0

    neg-int p1, p1

    xor-int v0, p2, p1

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 p1, 0x2f

    goto :goto_0

    :cond_2
    const/16 p1, 0x58

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x25

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 4

    .line 5
    sget p1, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v0, p1, -0x38

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x37

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x37

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    xor-int v2, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;

    move-result-object v0

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 5
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/16 v0, 0x1d

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 2
    :goto_4
    iget-object v0, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;

    move-result-object v0

    iget-object v3, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {v3}, Lccsansan/f/getDownloadingList;->getDownloadingList(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/unifiedDownload;

    move-result-object v3

    invoke-interface {v0, v3}, Lccsancom/san/xz/api/IDownloadService;->removeListener(Lccsancom/san/xz/api/unifiedDownload;)V

    .line 3
    iget-object v0, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {v0, v2}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;Lccsancom/san/xz/api/IDownloadService;)Lccsancom/san/xz/api/IDownloadService;

    .line 5
    sget v0, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1
    goto :goto_5

    :cond_3
    const/4 p1, 0x1

    :goto_5
    packed-switch p1, :pswitch_data_3

    .line 5
    :pswitch_1
    nop

    :pswitch_2
    iget-object p1, p0, Lccsansan/f/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/f/getDownloadingList;

    invoke-static {p1}, Lccsansan/f/getDownloadingList;->addDownloadListener(Lccsansan/f/getDownloadingList;)V

    sget p1, Lccsansan/f/getDownloadingList$unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x45

    and-int/lit8 p1, p1, 0x45

    shl-int/2addr p1, v1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
