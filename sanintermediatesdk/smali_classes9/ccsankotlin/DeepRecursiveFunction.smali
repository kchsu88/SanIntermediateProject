.class public final Lccsankotlin/DeepRecursiveFunction;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003BC\u00129\u0010\u0004\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005\u00a2\u0006\u0002\u0008\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tRL\u0010\u0004\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005\u00a2\u0006\u0002\u0008\u0008X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lccsankotlin/DeepRecursiveFunction;",
        "T",
        "R",
        "",
        "block",
        "Lccsankotlin/Function3;",
        "Lccsankotlin/DeepRecursiveScope;",
        "Lccsankotlin/coroutines/Continuation;",
        "Lccsankotlin/ExtensionFunctionType;",
        "(Lccsankotlin/jvm/functions/Function3;)V",
        "getBlock$kotlin_stdlib",
        "()Lccsankotlin/jvm/functions/Function3;",
        "Lccsankotlin/jvm/functions/Function3;",
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
.field private final block:Lccsankotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function3<",
            "Lccsankotlin/DeepRecursiveScope<",
            "TT;TR;>;TT;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "block"    # Lccsankotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/DeepRecursiveScope<",
            "TT;TR;>;-TT;-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/DeepRecursiveFunction;->block:Lccsankotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final getBlock$kotlin_stdlib()Lccsankotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/jvm/functions/Function3<",
            "Lccsankotlin/DeepRecursiveScope<",
            "TT;TR;>;TT;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lccsankotlin/DeepRecursiveFunction;->block:Lccsankotlin/jvm/functions/Function3;

    return-object v0
.end method