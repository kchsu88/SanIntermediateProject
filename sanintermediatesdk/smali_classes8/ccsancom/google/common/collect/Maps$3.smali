.class final Lccsancom/google/common/collect/Maps$3;
.super Lccsancom/google/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TransformedIterator<",
        "TK;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lccsancom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)V
    .locals 0

    .line 845
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    iput-object p2, p0, Lccsancom/google/common/collect/Maps$3;->val$function:Lccsancom/google/common/base/Function;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 845
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Maps$3;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 848
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$3;->val$function:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
