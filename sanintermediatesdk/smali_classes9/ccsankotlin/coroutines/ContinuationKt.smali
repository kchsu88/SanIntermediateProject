.class public final Lccsankotlin/coroutines/ContinuationKt;
.super Ljava/lang/Object;
.source "Continuation.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a?\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u00020\u00012\u001a\u0008\u0004\u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u000c\u0012\u0004\u0012\u00020\r0\u000bH\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u001a@\u0010\u000e\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\u00082\u001a\u0008\u0004\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0004\u0012\u00020\r0\u000bH\u0087H\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u0010\u001aD\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\"\u0004\u0008\u0000\u0010\u0008*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a]\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010\u0008*#\u0008\u0001\u0012\u0004\u0012\u0002H\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0016\u00a2\u0006\u0002\u0008\u00172\u0006\u0010\u0018\u001a\u0002H\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019\u001a&\u0010\u001a\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00072\u0006\u0010\u001b\u001a\u0002H\u0008H\u0087\u0008\u00a2\u0006\u0002\u0010\u001c\u001a!\u0010\u001d\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00072\u0006\u0010\u001e\u001a\u00020\u001fH\u0087\u0008\u001a>\u0010 \u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u001aW\u0010 \u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010\u0008*#\u0008\u0001\u0012\u0004\u0012\u0002H\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0016\u00a2\u0006\u0002\u0008\u00172\u0006\u0010\u0018\u001a\u0002H\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"\"\u001b\u0010\u0000\u001a\u00020\u00018\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006#"
    }
    d2 = {
        "coroutineContext",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "getCoroutineContext$annotations",
        "()V",
        "getCoroutineContext",
        "()Lccsankotlin/coroutines/CoroutineContext;",
        "Continuation",
        "Lccsankotlin/coroutines/Continuation;",
        "T",
        "context",
        "resumeWith",
        "Lccsankotlin/Function1;",
        "Lccsankotlin/Result;",
        "",
        "suspendCoroutine",
        "block",
        "(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createCoroutine",
        "",
        "completion",
        "(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;",
        "R",
        "Lccsankotlin/Function2;",
        "Lccsankotlin/ExtensionFunctionType;",
        "receiver",
        "(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;",
        "resume",
        "value",
        "(Lccsankotlin/coroutines/Continuation;Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "startCoroutine",
        "(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)V",
        "(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)V",
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
.method private static final Continuation(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/coroutines/Continuation;
    .locals 2
    .param p0, "context"    # Lccsankotlin/coroutines/CoroutineContext;
    .param p1, "resumeWith"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/Result<",
            "+TT;>;",
            "Lccsankotlin/Unit;",
            ">;)",
            "Lccsankotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$Continuation":I
    new-instance v1, Lccsankotlin/coroutines/ContinuationKt$Continuation$1;

    invoke-direct {v1, p0, p1}, Lccsankotlin/coroutines/ContinuationKt$Continuation$1;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/jvm/functions/Function1;)V

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    .line 72
    return-object v1
.end method

.method public static final createCoroutine(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 3
    .param p0, "$this$createCoroutine"    # Lccsankotlin/jvm/functions/Function1;
    .param p1, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lccsankotlin/coroutines/Continuation<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutine"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lccsankotlin/coroutines/SafeContinuation;

    invoke-static {p0, p1}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsankotlin/coroutines/SafeContinuation;-><init>(Lccsankotlin/coroutines/Continuation;Ljava/lang/Object;)V

    check-cast v0, Lccsankotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final createCoroutine(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 3
    .param p0, "$this$createCoroutine"    # Lccsankotlin/jvm/functions/Function2;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lccsankotlin/coroutines/Continuation<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutine"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lccsankotlin/coroutines/SafeContinuation;

    invoke-static {p0, p1, p2}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsankotlin/coroutines/SafeContinuation;-><init>(Lccsankotlin/coroutines/Continuation;Ljava/lang/Object;)V

    check-cast v0, Lccsankotlin/coroutines/Continuation;

    return-object v0
.end method

.method private static final getCoroutineContext()Lccsankotlin/coroutines/CoroutineContext;
    .locals 3

    const/4 v0, 0x0

    .line 159
    .local v0, "$i$f$getCoroutineContext":I
    new-instance v1, Lccsankotlin/NotImplementedError;

    const-string v2, "Implemented as intrinsic"

    invoke-direct {v1, v2}, Lccsankotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic getCoroutineContext$annotations()V
    .locals 0

    return-void
.end method

.method private static final resume(Lccsankotlin/coroutines/Continuation;Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$resume"    # Lccsankotlin/coroutines/Continuation;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$resume":I
    sget-object v1, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {p1}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private static final resumeWithException(Lccsankotlin/coroutines/Continuation;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "$this$resumeWithException"    # Lccsankotlin/coroutines/Continuation;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    .local v0, "$i$f$resumeWithException":I
    sget-object v1, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {p1}, Lccsankotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final startCoroutine(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)V
    .locals 3
    .param p0, "$this$startCoroutine"    # Lccsankotlin/jvm/functions/Function1;
    .param p1, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    sget-object v2, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {v1}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public static final startCoroutine(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)V
    .locals 3
    .param p0, "$this$startCoroutine"    # Lccsankotlin/jvm/functions/Function2;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1, p2}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lccsankotlin/jvm/functions/Function2;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    sget-object v2, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {v1}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private static final suspendCoroutine(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lccsankotlin/Unit;",
            ">;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$suspendCoroutine":I
    nop

    .line 144
    const/4 v1, 0x0

    invoke-static {v1}, Lccsankotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v1, p1

    .local v1, "c":Lccsankotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-ContinuationKt$suspendCoroutine$3":I
    new-instance v3, Lccsankotlin/coroutines/SafeContinuation;

    invoke-static {v1}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsankotlin/coroutines/SafeContinuation;-><init>(Lccsankotlin/coroutines/Continuation;)V

    .line 146
    .local v3, "safe":Lccsankotlin/coroutines/SafeContinuation;
    invoke-interface {p0, v3}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v3}, Lccsankotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v1

    .line 144
    .end local v1    # "c":Lccsankotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ContinuationKt$suspendCoroutine$3":I
    .end local v3    # "safe":Lccsankotlin/coroutines/SafeContinuation;
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lccsankotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lccsankotlin/coroutines/Continuation;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lccsankotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object v1
.end method
