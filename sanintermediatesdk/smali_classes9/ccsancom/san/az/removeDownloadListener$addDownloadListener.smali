.class final Lccsancom/san/az/removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 3
    sget v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v1, "exception"

    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 3
    const-string v0, "san_content_file_open_not_support"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    sget v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-void
.end method
