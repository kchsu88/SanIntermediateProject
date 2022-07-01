.class final Lccsancom/mbridge/msdk/foundation/controller/a$a$b;
.super Ljava/lang/Object;
.source "MBSDKContext.java"

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/controller/a$a;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lccsanandroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;)V
    .locals 1

    .line 320
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->b:Lccsancom/mbridge/msdk/foundation/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->a:Z

    .line 322
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Lccsancom/mbridge/msdk/foundation/controller/a$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lccsanandroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 335
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->a:Z

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->a:Z

    .line 338
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/IBinder;

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 326
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 327
    :catch_0
    move-exception p1

    .line 329
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 0

    .line 332
    return-void
.end method
