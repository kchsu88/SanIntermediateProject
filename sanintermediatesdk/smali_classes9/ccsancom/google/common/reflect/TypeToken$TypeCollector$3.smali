.class Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;
.super Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lccsancom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken$TypeCollector;Lccsancom/google/common/reflect/TypeToken$TypeCollector;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    .line 1342
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p2, "delegate":Lccsancom/google/common/reflect/TypeToken$TypeCollector;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;->this$0:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    invoke-direct {p0, p2}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;-><init>(Lccsancom/google/common/reflect/TypeToken$TypeCollector;)V

    return-void
.end method


# virtual methods
.method collectTypes(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 1350
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->builder()Lccsancom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1351
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1352
    .local v2, "type":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1353
    invoke-virtual {v0, v2}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 1355
    .end local v2    # "type":Ljava/lang/Object;, "TK;"
    :cond_0
    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-super {p0, v1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->collectTypes(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    .line 1345
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;, "Lccsancom/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
