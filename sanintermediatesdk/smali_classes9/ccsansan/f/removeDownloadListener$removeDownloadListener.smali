.class Lccsansan/f/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/xz/base/XzRecord;

.field final synthetic unifiedDownload:Lccsancom/san/xz/api/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/xz/api/unifiedDownload;

    iput-object p3, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v2, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v2}, Lccsancom/san/xz/api/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v1}, Lccsancom/san/xz/api/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_2

    :goto_1
    const/16 v0, 0x17

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
