.class Lccsanokhttp3/internal/cache/DiskLruCache$2;
.super Lccsanokhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lccsanokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    const-class v0, Lccsanokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache;Lccsanokio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/cache/DiskLruCache;
    .param p2, "delegate"    # Lccsanokio/Sink;

    .line 313
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$2;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lccsanokhttp3/internal/cache/FaultHidingSink;-><init>(Lccsanokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 315
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$2;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$2;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 317
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
