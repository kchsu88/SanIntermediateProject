.class Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/cpi/xz/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field removeDownloadListener:Lccsancom/san/cpi/xz/AdXzParams;


# direct methods
.method public constructor <init>(Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/cpi/xz/AdXzParams;

    return-void
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 13

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v4, v2, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v5, v2, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v6, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v7, v2, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v8, v2, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v9, v2, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v9

    move v10, v11

    move v11, v12

    invoke-virtual/range {v0 .. v11}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 3
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget v6, v0, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    const-string v2, "launch_gp"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
