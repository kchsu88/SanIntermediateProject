.class Lccsansan/bp/addDownloadListener$unifiedDownload;
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
.field final synthetic IncentiveDownloadUtils:I

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iput p3, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    iput-object p4, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

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

    iget-object v1, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v1

    .line 3
    sget-object v2, Lccsancom/san/convert/database/addDownloadListener;->AZ_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    .line 7
    invoke-virtual {v2}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 10
    iget v1, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    iget-object v2, p0, Lccsansan/bp/addDownloadListener$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(ILjava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
