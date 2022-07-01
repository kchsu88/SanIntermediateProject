.class public Lccsanenhance/d/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanenhance/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lccsanenhance/d/e;

.field public final b:Lccsanenhance/d/b;


# direct methods
.method public constructor <init>(Lccsanenhance/d/e;Lccsanenhance/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsanenhance/d/e$b;->a:Lccsanenhance/d/e;

    .line 3
    iput-object p2, p0, Lccsanenhance/d/e$b;->b:Lccsanenhance/d/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/d/e$b;->b:Lccsanenhance/d/b;

    invoke-virtual {v0, p1}, Lccsanenhance/d/b;->a(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lccsanenhance/d/e$b;->a(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsanenhance/d/e$b;->b:Lccsanenhance/d/b;

    invoke-virtual {v0, p1}, Lccsanenhance/d/b;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/d/e$b;->b:Lccsanenhance/d/b;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lccsanenhance/d/e$b;->a:Lccsanenhance/d/e;

    invoke-virtual {v0}, Lccsanenhance/d/e;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanenhance/d/e$b;->a:Lccsanenhance/d/e;

    invoke-virtual {v1}, Lccsanenhance/d/e;->a()V

    .line 4
    throw v0
.end method
