.class public final Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/coroutines/CoroutineContext$Element;
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
.method public static fold(Lccsankotlin/coroutines/CoroutineContext$Element;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/coroutines/CoroutineContext$Element;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "TR;",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p2, p1, p0}, Lccsankotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 2
    .param p0, "$this"    # Lccsankotlin/coroutines/CoroutineContext$Element;
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 67
    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-static {v0, p1}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type E"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static minusKey(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/coroutines/CoroutineContext$Element;
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lccsankotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-static {v0, p1}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    :goto_0
    return-object v0
.end method

.method public static plus(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    invoke-static {v0, p1}, Lccsankotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
