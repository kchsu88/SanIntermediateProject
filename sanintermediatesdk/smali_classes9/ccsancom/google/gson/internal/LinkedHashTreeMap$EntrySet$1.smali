.class Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .line 800
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    iput-object p1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->this$1:Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lccsancom/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 800
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 802
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lccsancom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->nextNode()Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
