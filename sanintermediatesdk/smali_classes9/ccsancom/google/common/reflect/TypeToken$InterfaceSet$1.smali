.class Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;
.super Ljava/lang/Object;
.source "TypeToken.java"

# interfaces
.implements Lccsancom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->rawTypes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Predicate<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/reflect/TypeToken$InterfaceSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken$InterfaceSet;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/reflect/TypeToken$InterfaceSet;

    .line 735
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;, "Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;->this$1:Lccsancom/google/common/reflect/TypeToken$InterfaceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 738
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;, "Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 735
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;, "Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;"
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;->apply(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
