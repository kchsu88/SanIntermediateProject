.class Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
.super Lccsancom/google/common/reflect/TypeToken$TypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForwardingTypeCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/reflect/TypeToken$TypeCollector<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/reflect/TypeToken$TypeCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/reflect/TypeToken$TypeCollector<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken$TypeCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken$TypeCollector<",
            "TK;>;)V"
        }
    .end annotation

    .line 1423
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<TK;>;"
    .local p1, "delegate":Lccsancom/google/common/reflect/TypeToken$TypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lccsancom/google/common/reflect/TypeToken$1;)V

    .line 1424
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    .line 1425
    return-void
.end method


# virtual methods
.method getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    .line 1434
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<TK;>;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1429
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<TK;>;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1439
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<TK;>;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
