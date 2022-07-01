.class Lccsansan/cy/deleteDownItem$removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownItem$removeDownloadListener;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/deleteDownItem$removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cy/deleteDownItem$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/deleteDownItem$removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lccsansan/m/getDownloadStatusByUrl;

    invoke-direct {p1}, Lccsansan/m/getDownloadStatusByUrl;-><init>()V

    .line 2
    iget-object v0, p0, Lccsansan/cy/deleteDownItem$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/deleteDownItem$removeDownloadListener;

    iget-object v0, v0, Lccsansan/cy/deleteDownItem$removeDownloadListener;->addDownloadListener:Ljava/util/List;

    invoke-virtual {p1, v0}, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadStatusByUrl;)Z

    :cond_0
    return-void
.end method
