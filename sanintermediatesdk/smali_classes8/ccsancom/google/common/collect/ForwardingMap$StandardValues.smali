.class public Lccsancom/google/common/collect/ForwardingMap$StandardValues;
.super Lccsancom/google/common/collect/Maps$Values;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$Values<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingMap;

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/ForwardingMap$StandardValues;, "Lccsancom/google/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingMap$StandardValues;->this$0:Lccsancom/google/common/collect/ForwardingMap;

    .line 227
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 228
    return-void
.end method
