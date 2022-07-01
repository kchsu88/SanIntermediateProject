.class public Lccsansan/bp/getDownloadingList;
.super Lccsansan/bp/unifiedDownload;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsansan/bp/unifiedDownload;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lccsansan/bp/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/IntentFilter;

    .line 6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lccsansan/bp/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 7
    :cond_0
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Lccsansan/bp/getDownloadingList$getDownloadingList;

    invoke-direct {p2, p0, p1}, Lccsansan/bp/getDownloadingList$getDownloadingList;-><init>(Lccsansan/bp/getDownloadingList;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    :cond_1
    return-void
.end method
