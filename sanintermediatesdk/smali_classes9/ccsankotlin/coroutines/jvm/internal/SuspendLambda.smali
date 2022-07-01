.class public abstract Lccsankotlin/coroutines/jvm/internal/SuspendLambda;
.super Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ContinuationImpl.kt"

# interfaces
.implements Lccsankotlin/jvm/internal/FunctionBase;
.implements Lccsankotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lccsankotlin/jvm/internal/FunctionBase<",
        "Ljava/lang/Object;",
        ">;",
        "Lccsankotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008!\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u00020\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lccsankotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lccsankotlin/jvm/internal/FunctionBase;",
        "",
        "Lccsankotlin/coroutines/jvm/internal/SuspendFunction;",
        "arity",
        "",
        "(I)V",
        "completion",
        "Lccsankotlin/coroutines/Continuation;",
        "(ILccsankotlin/coroutines/Continuation;)V",
        "getArity",
        "()I",
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


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "arity"    # I

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsankotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILccsankotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(ILccsankotlin/coroutines/Continuation;)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    nop

    .line 159
    invoke-direct {p0, p2}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lccsankotlin/coroutines/Continuation;)V

    iput p1, p0, Lccsankotlin/coroutines/jvm/internal/SuspendLambda;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 157
    iget v0, p0, Lccsankotlin/coroutines/jvm/internal/SuspendLambda;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lccsankotlin/coroutines/jvm/internal/SuspendLambda;->getCompletion()Lccsankotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    move-object v0, p0

    check-cast v0, Lccsankotlin/jvm/internal/FunctionBase;

    invoke-static {v0}, Lccsankotlin/jvm/internal/Reflection;->renderLambdaToString(Lccsankotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-super {p0}, Lccsankotlin/coroutines/jvm/internal/ContinuationImpl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    nop

    .line 166
    return-object v0
.end method
