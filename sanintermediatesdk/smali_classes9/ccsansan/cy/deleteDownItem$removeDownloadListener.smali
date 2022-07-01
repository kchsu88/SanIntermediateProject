.class final Lccsansan/cy/deleteDownItem$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/util/List;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->addDownloadListener:Ljava/util/List;

    iput p4, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->removeDownloadListener:I

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->addDownloadListener:Ljava/util/List;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lccsansan/cy/deleteDownItem$removeDownloadListener$addDownloadListener;

    invoke-direct {v3, p0}, Lccsansan/cy/deleteDownItem$removeDownloadListener$addDownloadListener;-><init>(Lccsansan/cy/deleteDownItem$removeDownloadListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/List;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public execute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->addDownloadListener:Ljava/util/List;

    iget v3, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->removeDownloadListener:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{EFFECT_TYPE}"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
