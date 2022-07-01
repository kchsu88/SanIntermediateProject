.class Lccsansan/af/getDownloadingList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;Lccsansan/af/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:I

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/af/getDownloadingList;ILjava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    iput-object p3, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p5, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, p2}, Lccsansan/bw/getErrorCode;->deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {p2}, Lccsansan/bw/getErrorCode;->deleteDownList(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 10
    iget-object p1, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsansan/af/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method
