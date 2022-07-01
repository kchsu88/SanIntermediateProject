.class Lccsancom/san/widget/TextProgressButton$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/widget/TextProgressButton;->createDownHelper(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field IncentiveDownloadUtils:I

.field final synthetic addDownloadListener:Lccsancom/san/widget/TextProgressButton;

.field final synthetic getDownloadingList:I

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/widget/TextProgressButton;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    iput p3, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->getDownloadingList:I

    iput-object p4, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    iget v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$100(Lccsancom/san/widget/TextProgressButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->UPDATE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    new-instance v2, Lccsansan/aa/addDownloadListener;

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-direct {v2, v3}, Lccsansan/aa/addDownloadListener;-><init>(Lccsansan/k/removeDownloadListener;)V

    invoke-static {v0, v2}, Lccsancom/san/widget/TextProgressButton;->access$202(Lccsancom/san/widget/TextProgressButton;Lccsansan/aa/addDownloadListener;)Lccsansan/aa/addDownloadListener;

    .line 11
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$300(Lccsancom/san/widget/TextProgressButton;Z)V

    :goto_0
    return-void
.end method

.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    iget v2, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->getDownloadingList:I

    invoke-static {v0, v1, v2}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsancom/san/widget/TextProgressButton$unifiedDownload;->IncentiveDownloadUtils:I

    return-void
.end method
