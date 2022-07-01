.class public Lccsancom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;
.super Lccsancom/google/common/collect/Maps$NavigableKeySet;
.source "ForwardingNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardNavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$NavigableKeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingNavigableMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingNavigableMap;

    .line 337
    .local p0, "this":Lccsancom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;, "Lccsancom/google/common/collect/ForwardingNavigableMap<TK;TV;>.StandardNavigableKeySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->this$0:Lccsancom/google/common/collect/ForwardingNavigableMap;

    .line 338
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    .line 339
    return-void
.end method
