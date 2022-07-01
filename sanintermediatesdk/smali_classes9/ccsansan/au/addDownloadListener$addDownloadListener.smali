.class final Lccsansan/au/addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;


# direct methods
.method constructor <init>(Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v3, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, p1, v2, v3, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z

    .line 2
    iget-object v0, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v5, v0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v7, v0, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v8, v0, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v1, 0x4

    const/4 v10, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v10}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v3, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, p1, v2, v3, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z

    .line 3
    iget-object v0, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/au/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v5, v0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v7, v0, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v8, v0, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v1, 0x4

    const/4 v10, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v10}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    :cond_1
    return-void
.end method
