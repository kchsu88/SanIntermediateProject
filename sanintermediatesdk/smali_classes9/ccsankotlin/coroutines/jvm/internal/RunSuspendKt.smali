.class public final Lccsankotlin/coroutines/jvm/internal/RunSuspendKt;
.super Ljava/lang/Object;
.source "RunSuspend.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a.\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "runSuspend",
        "",
        "block",
        "Lccsankotlin/Function1;",
        "Lccsankotlin/coroutines/Continuation;",
        "",
        "(Lccsankotlin/jvm/functions/Function1;)V",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final runSuspend(Lccsankotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "-",
            "Lccsankotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lccsankotlin/coroutines/jvm/internal/RunSuspend;

    invoke-direct {v0}, Lccsankotlin/coroutines/jvm/internal/RunSuspend;-><init>()V

    .line 19
    .local v0, "run":Lccsankotlin/coroutines/jvm/internal/RunSuspend;
    move-object v1, v0

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    invoke-static {p0, v1}, Lccsankotlin/coroutines/ContinuationKt;->startCoroutine(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)V

    .line 20
    invoke-virtual {v0}, Lccsankotlin/coroutines/jvm/internal/RunSuspend;->await()V

    .line 21
    return-void
.end method
