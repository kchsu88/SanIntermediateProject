.class Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;
.super Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->enumSetValues(Ljava/lang/Class;)Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$valueClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 387
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;"
    iput-object p1, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput-object p2, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->val$valueClass:Ljava/lang/Class;

    invoke-direct {p0}, Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 387
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->build()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lccsancom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;"
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$EnumSetSupplier;

    iget-object v1, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->val$valueClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/MultimapBuilder$EnumSetSupplier;-><init>(Ljava/lang/Class;)V

    .line 394
    .local v0, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Ljava/util/Set<TV;>;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-virtual {v1}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v1

    return-object v1
.end method
