.class Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;
.super Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->hashSetValues(I)Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 327
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;->val$expectedValuesPerKey:I

    invoke-direct {p0}, Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 327
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;->build()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lccsancom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;"
    iget-object v0, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 331
    invoke-virtual {v0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/MultimapBuilder$HashSetSupplier;

    iget v2, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;->val$expectedValuesPerKey:I

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/MultimapBuilder$HashSetSupplier;-><init>(I)V

    .line 330
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
