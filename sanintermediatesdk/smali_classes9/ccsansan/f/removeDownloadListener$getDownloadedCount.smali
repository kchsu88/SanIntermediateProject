.class Lccsansan/f/removeDownloadListener$getDownloadedCount;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->removeDownloadListener:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x5d

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x5d

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    neg-int v1, v1

    or-int v2, v0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->removeDownloadListener:Lccsansan/f/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v0, v1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadedCount;->removeDownloadListener:Lccsansan/f/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v0, v1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V

    const/16 v0, 0x37

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
    .end packed-switch
.end method
