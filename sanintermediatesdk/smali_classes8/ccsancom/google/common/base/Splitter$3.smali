.class final Lccsancom/google/common/base/Splitter$3;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lccsancom/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/Splitter;->on(Lccsancom/google/common/base/CommonPattern;)Lccsancom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorPattern:Lccsancom/google/common/base/CommonPattern;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/CommonPattern;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lccsancom/google/common/base/Splitter$3;->val$separatorPattern:Lccsancom/google/common/base/CommonPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;
    .locals 2
    .param p1, "splitter"    # Lccsancom/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lccsancom/google/common/base/Splitter$3;->val$separatorPattern:Lccsancom/google/common/base/CommonPattern;

    invoke-virtual {v0, p2}, Lccsancom/google/common/base/CommonPattern;->matcher(Ljava/lang/CharSequence;)Lccsancom/google/common/base/CommonMatcher;

    move-result-object v0

    .line 229
    .local v0, "matcher":Lccsancom/google/common/base/CommonMatcher;
    new-instance v1, Lccsancom/google/common/base/Splitter$3$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lccsancom/google/common/base/Splitter$3$1;-><init>(Lccsancom/google/common/base/Splitter$3;Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;Lccsancom/google/common/base/CommonMatcher;)V

    return-object v1
.end method

.method public bridge synthetic iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 225
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/base/Splitter$3;->iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method
