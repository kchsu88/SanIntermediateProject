.class Lccsankotlin/LazyKt__LazyKt;
.super Lccsankotlin/LazyKt__LazyJVMKt;
.source "Lazy.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001f\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002\u00a2\u0006\u0002\u0010\u0004\u001a4\u0010\u0005\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0087\n\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "lazyOf",
        "Lccsankotlin/Lazy;",
        "T",
        "value",
        "(Ljava/lang/Object;)Lccsankotlin/Lazy;",
        "getValue",
        "thisRef",
        "",
        "property",
        "Lccsankotlin/reflect/KProperty;",
        "(Lccsankotlin/Lazy;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/LazyKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsankotlin/LazyKt__LazyJVMKt;-><init>()V

    return-void
.end method

.method private static final getValue(Lccsankotlin/Lazy;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getValue"    # Lccsankotlin/Lazy;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lccsankotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/Lazy<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Lccsankotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$getValue":I
    const-string v1, "$this$getValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lccsankotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final lazyOf(Ljava/lang/Object;)Lccsankotlin/Lazy;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lccsankotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lccsankotlin/InitializedLazyImpl;

    invoke-direct {v0, p0}, Lccsankotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lccsankotlin/Lazy;

    return-object v0
.end method
