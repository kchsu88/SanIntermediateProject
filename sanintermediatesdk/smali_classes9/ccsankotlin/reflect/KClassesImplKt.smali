.class public final Lccsankotlin/reflect/KClassesImplKt;
.super Ljava/lang/Object;
.source "KClassesImpl.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\u0008\u00030\u00028\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "qualifiedOrSimpleName",
        "",
        "Lccsankotlin/reflect/KClass;",
        "getQualifiedOrSimpleName",
        "(Lccsankotlin/reflect/KClass;)Ljava/lang/String;",
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
.method public static final getQualifiedOrSimpleName(Lccsankotlin/reflect/KClass;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$qualifiedOrSimpleName"    # Lccsankotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/reflect/KClass<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$getQualifiedOrSimpleName":I
    const-string v1, "$this$qualifiedOrSimpleName"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lccsankotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
