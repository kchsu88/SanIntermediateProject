.class Lccsansan/bp/addDownloadListener$getDownloadingList;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bp/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/bk/unifiedDownload;

.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;Lccsansan/bk/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/bp/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/bp/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bk/unifiedDownload;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bp/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/bp/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bk/unifiedDownload;

    invoke-static {v0, v1}, Lccsansan/bp/removeDownloadListener;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bk/unifiedDownload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
