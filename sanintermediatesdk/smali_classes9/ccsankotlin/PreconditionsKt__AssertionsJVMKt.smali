.class Lccsankotlin/PreconditionsKt__AssertionsJVMKt;
.super Ljava/lang/Object;
.source "AssertionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssertionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssertionsJVM.kt\nkotlin/PreconditionsKt__AssertionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0008\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "assert",
        "",
        "value",
        "",
        "lazyMessage",
        "Lccsankotlin/Function0;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/PreconditionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final assert(Z)V
    .locals 3
    .param p0, "value"    # Z

    const/4 v0, 0x0

    .line 23
    .local v0, "$i$f$assert":I
    if-eqz p0, :cond_0

    .line 24
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 23
    .local v1, "$i$a$-assert-PreconditionsKt__AssertionsJVMKt$assert$1":I
    nop

    .end local v1    # "$i$a$-assert-PreconditionsKt__AssertionsJVMKt$assert$1":I
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Assertion failed"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final assert(ZLccsankotlin/jvm/functions/Function0;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "lazyMessage"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lccsankotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$assert":I
    nop

    .line 33
    if-eqz p0, :cond_0

    .line 38
    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "message":Ljava/lang/Object;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method