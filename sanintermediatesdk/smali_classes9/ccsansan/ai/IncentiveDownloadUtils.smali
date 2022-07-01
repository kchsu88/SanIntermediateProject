.class public Lccsansan/ai/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lccsansan/ai/removeDownloadListener;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lccsansan/ai/removeDownloadListener;"
        }
    .end annotation

    .line 1
    const-class v0, Lccsansan/ai/IncentiveDownloadUtils;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v8, Lccsansan/ai/removeDownloadListener;

    sget-object v2, Lccsansan/ai/removeDownloadListener$getDownloadingList;->Custom:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lccsansan/ai/removeDownloadListener;-><init>(Lccsansan/ai/removeDownloadListener$getDownloadingList;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    monitor-exit v0

    return-object v8

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
