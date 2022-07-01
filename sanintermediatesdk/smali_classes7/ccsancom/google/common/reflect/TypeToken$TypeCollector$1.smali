.class final Lccsancom/google/common/reflect/TypeToken$TypeCollector$1;
.super Lccsancom/google/common/reflect/TypeToken$TypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/reflect/TypeToken$TypeCollector<",
        "Lccsancom/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lccsancom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method getInterfaces(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/reflect/TypeToken<",
            "*>;>;"
        }
    .end annotation

    .line 1311
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->getGenericInterfaces()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1303
    check-cast p1, Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$1;->getInterfaces(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method getRawType(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1306
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1303
    check-cast p1, Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$1;->getRawType(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method getSuperclass(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "*>;)",
            "Lccsancom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1317
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->getGenericSuperclass()Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1303
    check-cast p1, Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$1;->getSuperclass(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method
