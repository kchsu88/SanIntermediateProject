.class final Lccsancom/google/common/collect/RegularImmutableTable$Values;
.super Lccsancom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/RegularImmutableTable;)V
    .locals 0

    .line 81
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableTable$Values;, "Lccsancom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableTable$Values;->this$0:Lccsancom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/RegularImmutableTable;Lccsancom/google/common/collect/RegularImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/RegularImmutableTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/RegularImmutableTable$1;

    .line 81
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableTable$Values;, "Lccsancom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/RegularImmutableTable$Values;-><init>(Lccsancom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableTable$Values;, "Lccsancom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableTable$Values;->this$0:Lccsancom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/RegularImmutableTable;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 94
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableTable$Values;, "Lccsancom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 84
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableTable$Values;, "Lccsancom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableTable$Values;->this$0:Lccsancom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lccsancom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
