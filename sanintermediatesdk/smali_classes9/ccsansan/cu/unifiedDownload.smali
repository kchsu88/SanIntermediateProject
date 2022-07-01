.class public Lccsansan/cu/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cu/unifiedDownload$addDownloadListener;
    }
.end annotation


# static fields
.field private static final IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cu/unifiedDownload$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile removeDownloadListener:Lccsansan/cu/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/cu/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unifiedDownload()Lccsansan/cu/unifiedDownload;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cu/unifiedDownload;->removeDownloadListener:Lccsansan/cu/unifiedDownload;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cu/unifiedDownload;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cu/unifiedDownload;->removeDownloadListener:Lccsansan/cu/unifiedDownload;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cu/unifiedDownload;

    invoke-direct {v1}, Lccsansan/cu/unifiedDownload;-><init>()V

    sput-object v1, Lccsansan/cu/unifiedDownload;->removeDownloadListener:Lccsansan/cu/unifiedDownload;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/cu/unifiedDownload;->removeDownloadListener:Lccsansan/cu/unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/cu/unifiedDownload$addDownloadListener;)V
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cu/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addDownloadListener(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cu/getDownloadedRecordByUrl;",
            ">;)V"
        }
    .end annotation

    .line 12
    sget-object v0, Lccsansan/cu/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cu/unifiedDownload$addDownloadListener;

    .line 16
    invoke-interface {v1, p1}, Lccsansan/cu/unifiedDownload$addDownloadListener;->updateHBConfig(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeDownloadListener(Lccsansan/cu/unifiedDownload$addDownloadListener;)V
    .locals 2

    .line 8
    sget-object v0, Lccsansan/cu/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
