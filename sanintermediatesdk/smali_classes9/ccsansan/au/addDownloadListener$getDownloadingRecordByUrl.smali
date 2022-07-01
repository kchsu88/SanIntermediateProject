.class final Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dt/resume;

.field final synthetic getDownloadingList:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/resume;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsansan/dt/resume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lccsansan/bw/getErrorCode;->deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsansan/dt/resume;

    invoke-virtual {p2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsansan/dt/resume;

    invoke-virtual {v0}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v0

    invoke-static {p1, p2, v0}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
