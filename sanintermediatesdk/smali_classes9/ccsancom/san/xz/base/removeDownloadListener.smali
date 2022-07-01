.class public Lccsancom/san/xz/base/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;
    }
.end annotation


# instance fields
.field private getDownloadingList:Ljava/lang/Object;

.field private removeDownloadListener:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/xz/base/removeDownloadListener;->removeDownloadListener:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/san/xz/base/removeDownloadListener;->getDownloadingList:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addDownloadListener()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/xz/base/removeDownloadListener;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsancom/san/xz/base/removeDownloadListener;->removeDownloadListener:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    sget-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADED:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
