.class public final Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;
.super Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(Lccsankotlin/coroutines/Continuation;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/coroutines/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2\n*L\n1#1,204:1\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2",
        "Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;",
        "label",
        "",
        "invokeSuspend",
        "",
        "result",
        "Lccsankotlin/Result;",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field final synthetic $block:Lccsankotlin/jvm/functions/Function1;

.field final synthetic $completion:Lccsankotlin/coroutines/Continuation;

.field final synthetic $context:Lccsankotlin/coroutines/CoroutineContext;

.field private label:I


# direct methods
.method public constructor <init>(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lccsankotlin/jvm/functions/Function1;
    .param p2, "$captured_local_variable$1"    # Lccsankotlin/coroutines/Continuation;
    .param p3, "$captured_local_variable$2"    # Lccsankotlin/coroutines/CoroutineContext;
    .param p4, "$super_call_param$3"    # Lccsankotlin/coroutines/Continuation;
    .param p5, "$super_call_param$4"    # Lccsankotlin/coroutines/CoroutineContext;

    .line 186
    iput-object p1, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$block:Lccsankotlin/jvm/functions/Function1;

    iput-object p2, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$completion:Lccsankotlin/coroutines/Continuation;

    iput-object p3, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$context:Lccsankotlin/coroutines/CoroutineContext;

    invoke-direct {p0, p4, p5}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lccsankotlin/coroutines/Continuation;Lccsankotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 190
    iget v0, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This coroutine had already completed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 197
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    .line 198
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    .line 192
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    .line 193
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$block:Lccsankotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
