.class public abstract Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.super Lccsancom/google/common/collect/MultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 420
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/MultimapBuilder;-><init>(Lccsancom/google/common/collect/MultimapBuilder$1;)V

    return-void
.end method


# virtual methods
.method public abstract build()Lccsancom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/MultimapBuilder;->build(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 419
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;
    .locals 0

    .line 419
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object p1

    return-object p1
.end method
