.class public final Lccsankotlin/coroutines/CoroutineContextImplKt;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "getPolymorphicElement",
        "E",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "key",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;",
        "minusPolymorphicKey",
        "Lccsankotlin/coroutines/CoroutineContext;",
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
.method public static final getPolymorphicElement(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 3
    .param p0, "$this$getPolymorphicElement"    # Lccsankotlin/coroutines/CoroutineContext$Element;
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

    const-string v0, "$this$getPolymorphicElement"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v0, p1, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 68
    nop

    .line 69
    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-virtual {v0, p0}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    instance-of v2, v0, Lccsankotlin/coroutines/CoroutineContext$Element;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1

    .line 71
    :cond_2
    nop

    .line 72
    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public static final minusPolymorphicKey(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 2
    .param p0, "$this$minusPolymorphicKey"    # Lccsankotlin/coroutines/CoroutineContext$Element;
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

    const-string v0, "$this$minusPolymorphicKey"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v0, p1, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    if-eqz v0, :cond_1

    .line 86
    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    invoke-virtual {v0, p0}, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;

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

    .line 88
    :cond_1
    invoke-interface {p0}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

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
