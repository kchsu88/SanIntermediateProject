.class Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v1

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 2
    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v2}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 3
    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v3}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 4
    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 5
    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 6
    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener()Z

    move-result v6

    .line 7
    invoke-virtual/range {v1 .. v6}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(ZZZZZ)V

    .line 13
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/deleteDownList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedCount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadedCount;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Z)V

    .line 16
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener()V

    return-void
.end method
