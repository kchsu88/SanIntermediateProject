.class Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;
.super Lccsansan/bk/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bh/addDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/bs/getDownloadingRecordByUrl;


# direct methods
.method constructor <init>(Lccsansan/bh/addDownloadListener;Lccsansan/bs/getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bh/addDownloadListener;

    iput-object p2, p0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/bs/getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bh/addDownloadListener;

    iget-object v1, p0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/bs/getDownloadingRecordByUrl;

    invoke-static {v0, v1}, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/bh/addDownloadListener;Lccsansan/bs/getDownloadingRecordByUrl;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bh/addDownloadListener;

    invoke-static {v1, v0}, Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsansan/bh/addDownloadListener;Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 10
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    return-void
.end method
