.class final Lccsancom/san/az/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x41

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x41

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int v3, v0, v1

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    :cond_0
    const-string v0, "san_common_app_run_failed"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    sget v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x7

    xor-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    or-int v3, v1, v0

    shl-int/lit8 v2, v3, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    return-void
.end method
