.class Lccsansan/f/getDownloadingList$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/f/getDownloadingList;

.field final synthetic getDownloadingList:Lccsancom/san/xz/base/XzRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/getDownloadingList$getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/getDownloadingList;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/f/getDownloadingList;

    iput-object p2, p0, Lccsansan/f/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    nop

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/f/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lccsansan/f/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/f/getDownloadingList;

    invoke-static {v1}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/san/xz/api/IDownloadService;->resume(Ljava/util/List;)V

    sget v0, Lccsansan/f/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x33

    and-int/lit8 v2, v0, 0x33

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x33

    and-int/2addr v0, v2

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/getDownloadingList$getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

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
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method
