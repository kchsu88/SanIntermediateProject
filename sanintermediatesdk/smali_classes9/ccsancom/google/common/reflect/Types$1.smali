.class final Lccsancom/google/common/reflect/Types$1;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/Types$1;->apply(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p1, "from"    # Ljava/lang/reflect/Type;

    .line 61
    sget-object v0, Lccsancom/google/common/reflect/Types$JavaVersion;->CURRENT:Lccsancom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lccsancom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
