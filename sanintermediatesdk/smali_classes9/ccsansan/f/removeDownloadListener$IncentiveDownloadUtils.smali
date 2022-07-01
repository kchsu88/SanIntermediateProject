.class Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;
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
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic unifiedDownload:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x28

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x28

    sub-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v1, v2}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method
