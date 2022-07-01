.class Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bs/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/bs/getDownloadingList$getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/bs/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/bs/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bs/getDownloadingList;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bs/getDownloadingList;

    iget-object v4, v3, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v4}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/bs/getDownloadingList;->addDownloadListener(Lccsansan/bs/getDownloadingList;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bs/getDownloadingList;

    iget-object v3, v3, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v3, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 5
    iget-object v1, p0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bs/getDownloadingList;

    iget-object v1, v1, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0, v1}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    .line 7
    iget-object v1, p0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bs/getDownloadingList;

    iget-object v1, v1, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0, v1}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
