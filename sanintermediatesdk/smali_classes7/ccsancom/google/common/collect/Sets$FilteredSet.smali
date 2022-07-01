.class Lccsancom/google/common/collect/Sets$FilteredSet;
.super Lccsancom/google/common/collect/Collections2$FilteredCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Collections2$FilteredCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lccsancom/google/common/base/Predicate;)V

    .line 1047
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1051
    .local p0, "this":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1056
    .local p0, "this":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
