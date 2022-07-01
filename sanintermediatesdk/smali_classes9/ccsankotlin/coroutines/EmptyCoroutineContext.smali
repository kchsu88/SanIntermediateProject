.class public final Lccsankotlin/coroutines/EmptyCoroutineContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J5\u0010\u0007\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u0002H\u00082\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00080\u000bH\u0016\u00a2\u0006\u0002\u0010\rJ(\u0010\u000e\u001a\u0004\u0018\u0001H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0011H\u0096\u0002\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0014\u0010\u0015\u001a\u00020\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0016J\u0011\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lccsankotlin/coroutines/EmptyCoroutineContext;",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "()V",
        "serialVersionUID",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lccsankotlin/Function2;",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "plus",
        "context",
        "readResolve",
        "",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lccsankotlin/coroutines/EmptyCoroutineContext;

    invoke-direct {v0}, Lccsankotlin/coroutines/EmptyCoroutineContext;-><init>()V

    sput-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 97
    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    return-object v0
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

    .line 100
    return-object p1
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

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
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

    .line 102
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public plus(Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lccsankotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
