.class public final Lccsankotlin/coroutines/CoroutineContext$DefaultImpls;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/coroutines/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static plus(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/coroutines/CoroutineContext;
    .param p1, "context"    # Lccsankotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lccsankotlin/coroutines/CoroutineContext$plus$1;->INSTANCE:Lccsankotlin/coroutines/CoroutineContext$plus$1;

    check-cast v0, Lccsankotlin/jvm/functions/Function2;

    invoke-interface {p1, p0, v0}, Lccsankotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    .line 31
    :goto_0
    nop

    .line 43
    return-object v0
.end method
