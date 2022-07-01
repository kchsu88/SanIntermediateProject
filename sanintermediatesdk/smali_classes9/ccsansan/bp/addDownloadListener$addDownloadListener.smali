.class Lccsansan/bp/addDownloadListener$addDownloadListener;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bp/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:J

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-wide p3, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->removeDownloadListener:J

    iput-object p5, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

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

    iget-object v1, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->removeDownloadListener:J

    invoke-virtual {v0, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(J)V

    .line 3
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 5
    iget-object v1, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    .line 7
    iget-object v1, p0, Lccsansan/bp/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
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
