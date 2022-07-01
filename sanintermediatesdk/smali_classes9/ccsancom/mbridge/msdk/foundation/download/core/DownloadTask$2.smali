.class Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatabase(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->access$002(Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 113
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    return-void
.end method
