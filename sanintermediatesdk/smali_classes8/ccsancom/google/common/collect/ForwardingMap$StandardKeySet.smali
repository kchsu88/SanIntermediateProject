.class public Lccsancom/google/common/collect/ForwardingMap$StandardKeySet;
.super Lccsancom/google/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingMap;

    .line 197
    .local p0, "this":Lccsancom/google/common/collect/ForwardingMap$StandardKeySet;, "Lccsancom/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lccsancom/google/common/collect/ForwardingMap;

    .line 198
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 199
    return-void
.end method
