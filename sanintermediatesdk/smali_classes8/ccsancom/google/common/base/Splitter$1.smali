.class final Lccsancom/google/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lccsancom/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/Splitter;->on(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lccsancom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/CharMatcher;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lccsancom/google/common/base/Splitter$1;->val$separatorMatcher:Lccsancom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;
    .locals 1
    .param p1, "splitter"    # Lccsancom/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 145
    new-instance v0, Lccsancom/google/common/base/Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/base/Splitter$1$1;-><init>(Lccsancom/google/common/base/Splitter$1;Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/base/Splitter$1;->iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method
