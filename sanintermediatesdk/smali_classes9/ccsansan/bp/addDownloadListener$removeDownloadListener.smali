.class Lccsansan/bp/addDownloadListener$removeDownloadListener;
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
.field final synthetic IncentiveDownloadUtils:Lccsansan/bp/addDownloadListener;

.field final synthetic addDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bp/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bp/addDownloadListener;

    iput-object p2, p0, Lccsansan/bp/addDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bp/addDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    if-nez v1, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lccsansan/bp/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bp/addDownloadListener;

    sget-object v2, Lccsansan/bh/IncentiveDownloadUtils;->SESSION_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-virtual {v1, v0, v2}, Lccsansan/bp/unifiedDownload;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bh/IncentiveDownloadUtils;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
