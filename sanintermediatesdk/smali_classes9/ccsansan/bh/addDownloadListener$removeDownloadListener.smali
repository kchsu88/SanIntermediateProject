.class Lccsansan/bh/addDownloadListener$removeDownloadListener;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/addDownloadListener;->getDownloadingList(ILccsansan/bh/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/bh/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:I

.field final synthetic removeDownloadListener:Lccsansan/bh/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bh/addDownloadListener;ILccsansan/bh/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/bh/addDownloadListener;

    iput p2, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->getDownloadingList:I

    iput-object p3, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/bh/addDownloadListener;

    iget v1, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->getDownloadingList:I

    invoke-static {v0, v1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener(Lccsansan/bh/addDownloadListener;I)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-virtual {v1}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 11
    :try_start_1
    iget-object v1, p0, Lccsansan/bh/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/bh/addDownloadListener;

    invoke-static {v1, v0}, Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsansan/bh/addDownloadListener;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 14
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    return-void
.end method
