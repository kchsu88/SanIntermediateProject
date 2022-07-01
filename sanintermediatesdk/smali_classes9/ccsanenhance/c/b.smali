.class public final Lccsanenhance/c/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lccsanenhance/c/a;)V
    .locals 1

    .line 1
    new-instance v0, Lccsanenhance/c/b$a;

    invoke-direct {v0, p0}, Lccsanenhance/c/b$a;-><init>(Lccsanenhance/c/a;)V

    .line 7
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/d/f;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
