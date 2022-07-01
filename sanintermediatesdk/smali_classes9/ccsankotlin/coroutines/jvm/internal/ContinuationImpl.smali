.class public abstract Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lccsankotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source "ContinuationImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008!\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lccsankotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "completion",
        "Lccsankotlin/coroutines/Continuation;",
        "",
        "(Lccsankotlin/coroutines/Continuation;)V",
        "_context",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "(Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;)V",
        "context",
        "getContext",
        "()Lccsankotlin/coroutines/CoroutineContext;",
        "intercepted",
        "releaseIntercepted",
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


# instance fields
.field private final _context:Lccsankotlin/coroutines/CoroutineContext;

.field private transient intercepted:Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsankotlin/coroutines/Continuation;->getContext()Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public constructor <init>(Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;)V
    .locals 0
    .param p1, "completion"    # Lccsankotlin/coroutines/Continuation;
    .param p2, "_context"    # Lccsankotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;",
            "Lccsankotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .line 98
    nop

    .line 101
    invoke-direct {p0, p1}, Lccsankotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(Lccsankotlin/coroutines/Continuation;)V

    iput-object p2, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lccsankotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lccsankotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lccsankotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lccsankotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    nop

    .line 113
    nop

    .line 112
    invoke-virtual {p0}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lccsankotlin/coroutines/CoroutineContext;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lccsankotlin/coroutines/ContinuationInterceptor;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    invoke-interface {v0, v1}, Lccsankotlin/coroutines/ContinuationInterceptor;->interceptContinuation(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/Continuation;

    .line 113
    :goto_0
    move-object v1, v0

    .line 169
    .local v1, "it":Lccsankotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-also-ContinuationImpl$intercepted$1":I
    iput-object v1, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lccsankotlin/coroutines/Continuation;

    .end local v1    # "it":Lccsankotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-also-ContinuationImpl$intercepted$1":I
    :goto_1
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 116
    iget-object v0, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lccsankotlin/coroutines/Continuation;

    .line 117
    .local v0, "intercepted":Lccsankotlin/coroutines/Continuation;
    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v2, Lccsankotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lccsankotlin/coroutines/CoroutineContext;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lccsankotlin/coroutines/ContinuationInterceptor;

    invoke-interface {v1, v0}, Lccsankotlin/coroutines/ContinuationInterceptor;->releaseInterceptedContinuation(Lccsankotlin/coroutines/Continuation;)V

    .line 120
    :cond_0
    sget-object v1, Lccsankotlin/coroutines/jvm/internal/CompletedContinuation;->INSTANCE:Lccsankotlin/coroutines/jvm/internal/CompletedContinuation;

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    iput-object v1, p0, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lccsankotlin/coroutines/Continuation;

    .line 121
    return-void
.end method
