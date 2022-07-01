.class Lccsancom/google/common/collect/Tables$TransformedTable$2;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Tables$TransformedTable;->rowMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TC;TV1;>;",
        "Ljava/util/Map<",
        "TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Tables$TransformedTable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Tables$TransformedTable;

    .line 415
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$2;, "Lccsancom/google/common/collect/Tables$TransformedTable$2;"
    iput-object p1, p0, Lccsancom/google/common/collect/Tables$TransformedTable$2;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 415
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$2;, "Lccsancom/google/common/collect/Tables$TransformedTable$2;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Tables$TransformedTable$2;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV1;>;)",
            "Ljava/util/Map<",
            "TC;TV2;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$2;, "Lccsancom/google/common/collect/Tables$TransformedTable$2;"
    .local p1, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV1;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransformedTable$2;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    iget-object v0, v0, Lccsancom/google/common/collect/Tables$TransformedTable;->function:Lccsancom/google/common/base/Function;

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
