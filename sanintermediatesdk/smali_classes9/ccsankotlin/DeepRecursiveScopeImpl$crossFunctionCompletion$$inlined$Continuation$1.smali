.class public final Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;
.super Ljava/lang/Object;
.source "Continuation.kt"

# interfaces
.implements Lccsankotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/DeepRecursiveScopeImpl;->crossFunctionCompletion(Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n186#2,6:162\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/coroutines/ContinuationKt$Continuation$1",
        "Lccsankotlin/coroutines/Continuation;",
        "context",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lccsankotlin/coroutines/CoroutineContext;",
        "resumeWith",
        "",
        "result",
        "Lccsankotlin/Result;",
        "(Ljava/lang/Object;)V",
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
.field final synthetic $cont$inlined:Lccsankotlin/coroutines/Continuation;

.field final synthetic $context:Lccsankotlin/coroutines/CoroutineContext;

.field final synthetic $currentFunction$inlined:Lccsankotlin/jvm/functions/Function3;

.field final synthetic this$0:Lccsankotlin/DeepRecursiveScopeImpl;


# direct methods
.method public constructor <init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lccsankotlin/coroutines/CoroutineContext;

    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$context:Lccsankotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->this$0:Lccsankotlin/DeepRecursiveScopeImpl;

    iput-object p3, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$currentFunction$inlined:Lccsankotlin/jvm/functions/Function3;

    iput-object p4, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$cont$inlined:Lccsankotlin/coroutines/Continuation;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    .line 68
    iget-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$context:Lccsankotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 162
    .local v1, "$i$a$-Continuation-DeepRecursiveScopeImpl$crossFunctionCompletion$1":I
    iget-object v2, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->this$0:Lccsankotlin/DeepRecursiveScopeImpl;

    iget-object v3, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$currentFunction$inlined:Lccsankotlin/jvm/functions/Function3;

    invoke-static {v2, v3}, Lccsankotlin/DeepRecursiveScopeImpl;->access$setFunction$p(Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/jvm/functions/Function3;)V

    .line 165
    iget-object v2, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->this$0:Lccsankotlin/DeepRecursiveScopeImpl;

    iget-object v3, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->$cont$inlined:Lccsankotlin/coroutines/Continuation;

    invoke-static {v2, v3}, Lccsankotlin/DeepRecursiveScopeImpl;->access$setCont$p(Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/coroutines/Continuation;)V

    .line 166
    iget-object v2, p0, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;->this$0:Lccsankotlin/DeepRecursiveScopeImpl;

    invoke-static {v2, v0}, Lccsankotlin/DeepRecursiveScopeImpl;->access$setResult$p(Lccsankotlin/DeepRecursiveScopeImpl;Ljava/lang/Object;)V

    .line 167
    nop

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-Continuation-DeepRecursiveScopeImpl$crossFunctionCompletion$1":I
    return-void
.end method
