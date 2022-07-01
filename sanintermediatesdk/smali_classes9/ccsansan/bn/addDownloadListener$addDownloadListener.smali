.class final Lccsansan/bn/addDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsansan/m/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;


# direct methods
.method constructor <init>(JLccsansan/m/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/bn/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bn/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    iget-object v1, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method
