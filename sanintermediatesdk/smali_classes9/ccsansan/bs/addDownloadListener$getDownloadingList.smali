.class Lccsansan/bs/addDownloadListener$getDownloadingList;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/bs/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bs/addDownloadListener;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iput-object p4, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lccsansan/bk/getDownloadingList;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v0, v0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    .line 2
    sget-object v1, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v2, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lccsansan/bs/addDownloadListener;->removeDownloadListener(Lccsansan/bs/addDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-string v0, "AD_CONVERT"

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activate result unknow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v2, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    iget-object v2, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v3, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsansan/bs/addDownloadListener;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v2

    .line 13
    iget-object v4, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v4, v4, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v4, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 14
    iget-object v2, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v2, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v1

    iget-object v2, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v2, v2, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-interface {v1, v2}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 16
    iget-object v1, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v1, v1, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v1}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    const-string v1, "real_time"

    const-string v2, "1"

    .line 17
    invoke-virtual {v0, v1, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lccsansan/bs/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/bs/addDownloadListener;

    iget-object v1, v1, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0, v1}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    new-instance v1, Lccsansan/bj/addDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
