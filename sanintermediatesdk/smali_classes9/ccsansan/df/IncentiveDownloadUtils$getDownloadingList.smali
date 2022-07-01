.class Lccsansan/df/IncentiveDownloadUtils$getDownloadingList;
.super Lccsanandroid/content/pm/IPackageStatsObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/df/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/do/getDownloadingList;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/util/concurrent/CountDownLatch;

.field final synthetic getDownloadingList:Ljava/util/Map;


# direct methods
.method constructor <init>(Lccsansan/df/IncentiveDownloadUtils;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/df/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Ljava/util/Map;

    iput-object p3, p0, Lccsansan/df/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Lccsanandroid/content/pm/PackageStats;Z)V
    .locals 5

    .line 1
    iget-object p2, p0, Lccsansan/df/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Ljava/util/Map;

    iget-object v0, p1, Lccsanandroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-wide v1, p1, Lccsanandroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p1, Lccsanandroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lccsansan/df/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
