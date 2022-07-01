.class public interface abstract Lccsankotlin/coroutines/ContinuationInterceptor;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/coroutines/ContinuationInterceptor$DefaultImpls;,
        Lccsankotlin/coroutines/ContinuationInterceptor$Key;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ(\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0005H\u0096\u0002\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008H&J\u0014\u0010\u000b\u001a\u00020\u000c2\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lccsankotlin/coroutines/ContinuationInterceptor;",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "get",
        "E",
        "key",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;",
        "interceptContinuation",
        "Lccsankotlin/coroutines/Continuation;",
        "T",
        "continuation",
        "minusKey",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "releaseInterceptedContinuation",
        "",
        "Key",
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
.field public static final Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lccsankotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    sput-object v0, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    return-void
.end method


# virtual methods
.method public abstract get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract interceptContinuation(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lccsankotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lccsankotlin/coroutines/CoroutineContext;"
        }
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Lccsankotlin/coroutines/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation
.end method
