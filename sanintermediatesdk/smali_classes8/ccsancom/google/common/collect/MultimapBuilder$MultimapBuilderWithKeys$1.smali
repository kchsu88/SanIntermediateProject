.class Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
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

    .line 293
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {p0}, Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 297
    invoke-virtual {v0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget v2, p0, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 296
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Multimaps;->newListMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 293
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->build()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
