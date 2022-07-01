.class Lccsancom/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lccsancom/google/common/base/CharMatcher$Negated;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/base/CharMatcher;)V
    .locals 0
    .param p1, "original"    # Lccsancom/google/common/base/CharMatcher;

    .line 970
    invoke-direct {p0, p1}, Lccsancom/google/common/base/CharMatcher$Negated;-><init>(Lccsancom/google/common/base/CharMatcher;)V

    .line 971
    return-void
.end method


# virtual methods
.method public final precomputed()Lccsancom/google/common/base/CharMatcher;
    .locals 0

    .line 975
    return-object p0
.end method
