.class public abstract Lccsankotlin/coroutines/AbstractCoroutineContextKey;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lccsankotlin/coroutines/CoroutineContext$Key<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u0002H\u00012\u0008\u0012\u0004\u0012\u0002H\u00030\u0004B8\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012#\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u00a2\u0006\u0002\u0008\u0010J\u0019\u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R+\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lccsankotlin/coroutines/AbstractCoroutineContextKey;",
        "B",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "E",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "baseKey",
        "safeCast",
        "Lccsankotlin/Function1;",
        "Lccsankotlin/ParameterName;",
        "name",
        "element",
        "(Lccsankotlin/coroutines/CoroutineContext$Key;Lccsankotlin/jvm/functions/Function1;)V",
        "topmostKey",
        "isSubKey",
        "",
        "key",
        "isSubKey$kotlin_stdlib",
        "tryCast",
        "tryCast$kotlin_stdlib",
        "(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;",
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
.field private final safeCast:Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function1<",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final topmostKey:Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/coroutines/CoroutineContext$Key;Lccsankotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "baseKey"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .param p2, "safeCast"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TB;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->safeCast:Lccsankotlin/jvm/functions/Function1;

    .line 52
    instance-of v0, p1, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    iget-object v0, v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->topmostKey:Lccsankotlin/coroutines/CoroutineContext$Key;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->topmostKey:Lccsankotlin/coroutines/CoroutineContext$Key;

    return-void
.end method


# virtual methods
.method public final isSubKey$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Key;)Z
    .locals 1
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->topmostKey:Lccsankotlin/coroutines/CoroutineContext$Key;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final tryCast$kotlin_stdlib(Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "element"    # Lccsankotlin/coroutines/CoroutineContext$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lccsankotlin/coroutines/AbstractCoroutineContextKey;->safeCast:Lccsankotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext$Element;

    return-object v0
.end method
