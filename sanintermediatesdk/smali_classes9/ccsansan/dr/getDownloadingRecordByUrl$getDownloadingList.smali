.class final Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/do/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(ZLjava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/util/Map;

.field final synthetic addDownloadListener:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;->addDownloadListener:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;->addDownloadListener:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    iget-object v0, p0, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
