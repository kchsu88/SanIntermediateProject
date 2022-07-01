.class Lccsansan/bs/addDownloadListener$removeDownloadListener;
.super Lccsansan/bk/unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bs/addDownloadListener;->removeDownloadListener()Lccsansan/bs/addDownloadListener$addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bs/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bs/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    invoke-direct {p0}, Lccsansan/bk/unifiedDownload;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v3, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v2, v3}, Lccsansan/bs/addDownloadListener;->unifiedDownload(Lccsansan/bs/addDownloadListener;Lccsancom/san/convert/database/ConvertIntent;)V

    .line 5
    iget-object v2, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v3, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v3}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/bs/addDownloadListener;->addDownloadListener(Lccsansan/bs/addDownloadListener;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v2, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v2, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(J)V

    .line 8
    iget-object v0, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v0, v0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {p1, v0}, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    .line 9
    iget-object v0, p0, Lccsansan/bs/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v0, v0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {p1, v0}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    new-instance v0, Lccsansan/bj/addDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/bj/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
