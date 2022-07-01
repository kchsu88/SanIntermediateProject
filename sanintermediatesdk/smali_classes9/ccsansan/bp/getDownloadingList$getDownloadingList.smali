.class Lccsansan/bp/getDownloadingList$getDownloadingList;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bp/getDownloadingList;->onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bp/getDownloadingList;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bp/getDownloadingList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bp/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/bp/getDownloadingList;

    iput-object p2, p0, Lccsansan/bp/getDownloadingList$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bp/getDownloadingList$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/san/convert/database/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/convert/database/ConvertIntent;

    .line 8
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xb

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lccsansan/bp/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/bp/getDownloadingList;

    sget-object v2, Lccsansan/bh/IncentiveDownloadUtils;->SYSTEM_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-virtual {v0, v1, v2}, Lccsansan/bp/unifiedDownload;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bh/IncentiveDownloadUtils;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 19
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_2
    return-void
.end method
