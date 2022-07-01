.class public abstract Lccsankotlin/DeepRecursiveScope;
.super Ljava/lang/Object;
.source "DeepRecursive.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J5\u0010\u0005\u001a\u0002H\u0008\"\u0004\u0008\u0002\u0010\t\"\u0004\u0008\u0003\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u0006\u001a\u0002H\tH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u000c\u001a\u00020\r*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0087\u0002\u0082\u0001\u0001\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lccsankotlin/DeepRecursiveScope;",
        "T",
        "R",
        "",
        "()V",
        "callRecursive",
        "value",
        "(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "S",
        "U",
        "Lccsankotlin/DeepRecursiveFunction;",
        "(Lccsankotlin/DeepRecursiveFunction;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invoke",
        "",
        "Lccsankotlin/DeepRecursiveScopeImpl;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 98
    invoke-direct {p0}, Lccsankotlin/DeepRecursiveScope;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract callRecursive(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract callRecursive(Lccsankotlin/DeepRecursiveFunction;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/DeepRecursiveFunction<",
            "TU;TS;>;TU;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final invoke(Lccsankotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "$this$invoke"    # Lccsankotlin/DeepRecursiveFunction;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/DeepRecursiveFunction<",
            "**>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation runtime Lccsankotlin/Deprecated;
        level = .enum Lccsankotlin/DeprecationLevel;->ERROR:Lccsankotlin/DeprecationLevel;
        message = "\'invoke\' should not be called from DeepRecursiveScope. Use \'callRecursive\' to do recursion in the heap instead of the call stack."
        replaceWith = .subannotation Lccsankotlin/ReplaceWith;
            expression = "this.callRecursive(value)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "$this$invoke"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called from DeepRecursiveScope"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
