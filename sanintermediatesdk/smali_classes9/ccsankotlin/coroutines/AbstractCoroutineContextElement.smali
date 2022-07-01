.class public abstract Lccsankotlin/coroutines/AbstractCoroutineContextElement;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/coroutines/AbstractCoroutineContextElement;",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "key",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "(Lccsankotlin/coroutines/CoroutineContext$Key;)V",
        "getKey",
        "()Lccsankotlin/coroutines/CoroutineContext$Key;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final key:Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/coroutines/CoroutineContext$Key;)V
    .locals 1
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/coroutines/AbstractCoroutineContextElement;->key:Lccsankotlin/coroutines/CoroutineContext$Key;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1, p2}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->fold(Lccsankotlin/coroutines/CoroutineContext$Element;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lccsankotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lccsankotlin/coroutines/AbstractCoroutineContextElement;->key:Lccsankotlin/coroutines/CoroutineContext$Key;

    return-object v0
.end method

.method public minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lccsankotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lccsankotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lccsankotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lccsankotlin/coroutines/CoroutineContext$Element;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
