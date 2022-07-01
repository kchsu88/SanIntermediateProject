.class final Lccsancom/mbridge/msdk/reward/a/a$c;
.super Ljava/lang/Object;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lccsanandroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Lccsanandroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    .line 1311
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1312
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    .line 1313
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->e:Ljava/lang/String;

    .line 1314
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Lccsanandroid/os/Handler;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/a/a$1;)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/reward/a/a$c;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Lccsanandroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a$c;)I
    .locals 0

    .line 1295
    nop

    .line 4318
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    .line 1295
    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a$c;I)V
    .locals 0

    .line 1295
    nop

    .line 4322
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1295
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 2425
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2426
    const v1, 0xf462a

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 2428
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 2429
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 2430
    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 2431
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_5

    .line 2432
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 2433
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->w(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "resource load timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2434
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 2437
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->u(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2438
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2440
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->v(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->x(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->u(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2441
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2442
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 2443
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 2444
    const/16 p1, 0x10

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 2445
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1295
    :cond_5
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 2369
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2370
    const v1, 0xf462a

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 2372
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 2373
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 2374
    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2375
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2376
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2377
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->u(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2378
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 2379
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 2380
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2381
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 2384
    iput-object p2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 2385
    const/16 p1, 0x9

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 2386
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1295
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 1460
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 1461
    const/16 p1, 0x12

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 1462
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1464
    :cond_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/a/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1295
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 3394
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3395
    const v1, 0xf462a

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 3397
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 3398
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 3399
    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 3400
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3401
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3402
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3404
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->u(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3405
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 3406
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 3407
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 3408
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 3411
    iput-object p2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 3412
    const/16 p1, 0x9

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 3413
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 3415
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->v(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3416
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1295
    :cond_3
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V
    .locals 2

    .line 1295
    nop

    .line 4453
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4454
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 5348
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 5349
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 5350
    if-eqz v0, :cond_0

    .line 5351
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5352
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->t(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5353
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 5354
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 5355
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 5356
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5357
    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 5359
    iput-object p2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 5360
    const/16 p1, 0x11

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 5361
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1295
    :cond_0
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 5467
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 5468
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 5469
    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 5470
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_2

    .line 5471
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 5472
    const-string v0, "resource load timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5473
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 5475
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->x(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->v(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->u(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5476
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5477
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 5478
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 5479
    const/16 p1, 0x10

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 5480
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1295
    :cond_2
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1295
    nop

    .line 6327
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 6328
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 6329
    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 6330
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6331
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->t(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6332
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 6333
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 6334
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 6335
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6336
    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6337
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 6338
    iput-object p2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 6339
    const/16 p1, 0x11

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 6340
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->d:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1295
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1547
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a$c;->f:Z

    .line 1548
    return-void
.end method
