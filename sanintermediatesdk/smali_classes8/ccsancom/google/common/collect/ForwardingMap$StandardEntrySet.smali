.class public abstract Lccsancom/google/common/collect/ForwardingMap$StandardEntrySet;
.super Lccsancom/google/common/collect/Maps$EntrySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingMap;

    .line 254
    .local p0, "this":Lccsancom/google/common/collect/ForwardingMap$StandardEntrySet;, "Lccsancom/google/common/collect/ForwardingMap<TK;TV;>.StandardEntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingMap$StandardEntrySet;->this$0:Lccsancom/google/common/collect/ForwardingMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lccsancom/google/common/collect/ForwardingMap$StandardEntrySet;, "Lccsancom/google/common/collect/ForwardingMap<TK;TV;>.StandardEntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ForwardingMap$StandardEntrySet;->this$0:Lccsancom/google/common/collect/ForwardingMap;

    return-object v0
.end method
