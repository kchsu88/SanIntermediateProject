.class Lccsancom/google/common/base/CharMatcher$1;
.super Lccsancom/google/common/base/CharMatcher$NegatedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/CharMatcher;->precomputedInternal()Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/base/CharMatcher;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/CharMatcher;Lccsancom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/base/CharMatcher;
    .param p2, "original"    # Lccsancom/google/common/base/CharMatcher;

    .line 431
    iput-object p1, p0, Lccsancom/google/common/base/CharMatcher$1;->this$0:Lccsancom/google/common/base/CharMatcher;

    iput-object p3, p0, Lccsancom/google/common/base/CharMatcher$1;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Lccsancom/google/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lccsancom/google/common/base/CharMatcher$1;->val$description:Ljava/lang/String;

    return-object v0
.end method
