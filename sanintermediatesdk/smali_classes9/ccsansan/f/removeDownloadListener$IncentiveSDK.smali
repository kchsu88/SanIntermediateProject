.class Lccsansan/f/removeDownloadListener$IncentiveSDK;
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
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->removeDownloadListener:I

    and-int/lit8 v1, v0, -0x36

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x35

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x35

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v1, v3}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/f/removeDownloadListener$IncentiveSDK;->addDownloadListener:Lccsansan/f/removeDownloadListener;

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v1, v3}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v1, Lccsansan/f/removeDownloadListener$IncentiveSDK;->removeDownloadListener:I

    xor-int/lit8 v3, v1, 0x57

    and-int/lit8 v4, v1, 0x57

    or-int/2addr v3, v4

    shl-int/lit8 v2, v3, 0x1

    xor-int/lit8 v3, v4, -0x1

    or-int/lit8 v1, v1, 0x57

    and-int/2addr v1, v3

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$IncentiveSDK;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v1, 0x19

    goto :goto_3

    :cond_1
    const/16 v1, 0x45

    :goto_3
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 v1, 0x33

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch
.end method
