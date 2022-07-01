.class public final Lccsankotlin/text/MatcherMatchResult$groups$1;
.super Lccsankotlin/collections/AbstractCollection;
.source "Regex.kt"

# interfaces
.implements Lccsankotlin/text/MatchNamedGroupCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/collections/AbstractCollection<",
        "Lccsankotlin/text/MatchGroup;",
        ">;",
        "Lccsankotlin/text/MatchNamedGroupCollection;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groups$1",
        "Lccsankotlin/text/MatchNamedGroupCollection;",
        "Lccsankotlin/collections/AbstractCollection;",
        "Lccsankotlin/text/MatchGroup;",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "name",
        "",
        "isEmpty",
        "",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsankotlin/text/MatcherMatchResult;


# direct methods
.method constructor <init>(Lccsankotlin/text/MatcherMatchResult;)V
    .locals 0
    .param p1, "this$0"    # Lccsankotlin/text/MatcherMatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lccsankotlin/text/MatcherMatchResult$groups$1;->this$0:Lccsankotlin/text/MatcherMatchResult;

    invoke-direct {p0}, Lccsankotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 325
    if-eqz p1, :cond_0

    instance-of v0, p1, Lccsankotlin/text/MatchGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lccsankotlin/text/MatchGroup;

    invoke-virtual {p0, p1}, Lccsankotlin/text/MatcherMatchResult$groups$1;->contains(Lccsankotlin/text/MatchGroup;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge contains(Lccsankotlin/text/MatchGroup;)Z
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lccsankotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lccsankotlin/text/MatchGroup;
    .locals 4
    .param p1, "index"    # I

    .line 331
    iget-object v0, p0, Lccsankotlin/text/MatcherMatchResult$groups$1;->this$0:Lccsankotlin/text/MatcherMatchResult;

    invoke-static {v0}, Lccsankotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lccsankotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lccsankotlin/text/RegexKt;->access$range(Ljava/util/regex/MatchResult;I)Lccsankotlin/ranges/IntRange;

    move-result-object v0

    .line 332
    .local v0, "range":Lccsankotlin/ranges/IntRange;
    invoke-virtual {v0}, Lccsankotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 333
    new-instance v1, Lccsankotlin/text/MatchGroup;

    iget-object v2, p0, Lccsankotlin/text/MatcherMatchResult$groups$1;->this$0:Lccsankotlin/text/MatcherMatchResult;

    invoke-static {v2}, Lccsankotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lccsankotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "matchResult.group(index)"

    invoke-static {v2, v3}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lccsankotlin/text/MatchGroup;-><init>(Ljava/lang/String;Lccsankotlin/ranges/IntRange;)V

    goto :goto_0

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 332
    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;)Lccsankotlin/text/MatchGroup;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lccsankotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lccsankotlin/internal/PlatformImplementations;

    iget-object v1, p0, Lccsankotlin/text/MatcherMatchResult$groups$1;->this$0:Lccsankotlin/text/MatcherMatchResult;

    invoke-static {v1}, Lccsankotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lccsankotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsankotlin/internal/PlatformImplementations;->getMatchResultNamedGroup(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lccsankotlin/text/MatchGroup;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 326
    iget-object v0, p0, Lccsankotlin/text/MatcherMatchResult$groups$1;->this$0:Lccsankotlin/text/MatcherMatchResult;

    invoke-static {v0}, Lccsankotlin/text/MatcherMatchResult;->access$getMatchResult$p(Lccsankotlin/text/MatcherMatchResult;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsankotlin/text/MatchGroup;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-static {p0}, Lccsankotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lccsankotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lccsankotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lccsankotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;

    invoke-direct {v1, p0}, Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Lccsankotlin/text/MatcherMatchResult$groups$1;)V

    check-cast v1, Lccsankotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lccsankotlin/sequences/SequencesKt;->map(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
