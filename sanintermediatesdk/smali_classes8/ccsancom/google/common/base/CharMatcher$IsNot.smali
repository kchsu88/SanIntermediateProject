.class final Lccsancom/google/common/base/CharMatcher$IsNot;
.super Lccsancom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsNot"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "match"    # C

    .line 1651
    invoke-direct {p0}, Lccsancom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1652
    iput-char p1, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    .line 1653
    return-void
.end method


# virtual methods
.method public and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lccsancom/google/common/base/CharMatcher;

    .line 1662
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lccsancom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lccsancom/google/common/base/CharMatcher$FastMatcher;->and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1657
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public negate()Lccsancom/google/common/base/CharMatcher;
    .locals 1

    .line 1679
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {v0}, Lccsancom/google/common/base/CharMatcher$IsNot;->is(C)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lccsancom/google/common/base/CharMatcher;

    .line 1667
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lccsancom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/google/common/base/CharMatcher$IsNot;->any()Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1673
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    .line 1674
    iget-char v0, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1675
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lccsancom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {v1}, Lccsancom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
