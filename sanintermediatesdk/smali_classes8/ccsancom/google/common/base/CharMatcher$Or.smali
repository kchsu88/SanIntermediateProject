.class final Lccsancom/google/common/base/CharMatcher$Or;
.super Lccsancom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Or"
.end annotation


# instance fields
.field final first:Lccsancom/google/common/base/CharMatcher;

.field final second:Lccsancom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/CharMatcher;Lccsancom/google/common/base/CharMatcher;)V
    .locals 1
    .param p1, "a"    # Lccsancom/google/common/base/CharMatcher;
    .param p2, "b"    # Lccsancom/google/common/base/CharMatcher;

    .line 1575
    invoke-direct {p0}, Lccsancom/google/common/base/CharMatcher;-><init>()V

    .line 1576
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/CharMatcher;

    iput-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->first:Lccsancom/google/common/base/CharMatcher;

    .line 1577
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/CharMatcher;

    iput-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->second:Lccsancom/google/common/base/CharMatcher;

    .line 1578
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1570
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lccsancom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1589
    iget-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->first:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lccsancom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->second:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lccsancom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1583
    iget-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->first:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lccsancom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1584
    iget-object v0, p0, Lccsancom/google/common/base/CharMatcher$Or;->second:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lccsancom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1585
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/base/CharMatcher$Or;->first:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/base/CharMatcher$Or;->second:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
