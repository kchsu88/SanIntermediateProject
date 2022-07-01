.class public final Lccsankotlin/coroutines/ContinuationInterceptor$DefaultImpls;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/coroutines/ContinuationInterceptor;
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
.method public static fold(Lccsankotlin/coroutines/ContinuationInterceptor;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/ContinuationInterceptor;",
            "TR;",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1, p2}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->fold(Lccsankotlin/coroutines/CoroutineContext$Element;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lccsankotlin/coroutines/ContinuationInterceptor;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 3
    .param p0, "$this"    # Lccsankotlin/coroutines/ContinuationInterceptor;
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lccsankotlin/coroutines/ContinuationInterceptor;",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    instance-of v0, p1, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 56
    nop

    .line 57
    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lccsankotlin/coroutines/ContinuationInterceptor;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    move-object v2, p0

    check-cast v2, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {v0, v2}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    instance-of v2, v0, Lccsankotlin/coroutines/CoroutineContext$Element;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1

    .line 59
    :cond_2
    nop

    .line 60
    sget-object v0, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    if-ne v0, p1, :cond_4

    if-eqz p0, :cond_3

    move-object v1, p0

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext$Element;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type E"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static minusKey(Lccsankotlin/coroutines/ContinuationInterceptor;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 2
    .param p0, "$this"    # Lccsankotlin/coroutines/ContinuationInterceptor;
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/ContinuationInterceptor;",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lccsankotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 67
    instance-of v0, p1, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lccsankotlin/coroutines/ContinuationInterceptor;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    move-object v1, p0

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {v0, v1}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    :goto_0
    return-object v0

    .line 70
    :cond_1
    sget-object v0, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    if-ne v0, p1, :cond_2

    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_1

    :cond_2
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    :goto_1
    return-object v0
.end method

.method public static plus(Lccsankotlin/coroutines/ContinuationInterceptor;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public static releaseInterceptedContinuation(Lccsankotlin/coroutines/ContinuationInterceptor;Lccsankotlin/coroutines/Continuation;)V
    .locals 1
    .param p0, "$this"    # Lccsankotlin/coroutines/ContinuationInterceptor;
    .param p1, "continuation"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/ContinuationInterceptor;",
            "Lccsankotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method
