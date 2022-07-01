.class final Lccsancom/google/common/collect/Maps$12;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Maps;->transformEntry(Lccsancom/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lccsancom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lccsancom/google/common/collect/Maps$12;->val$entry:Ljava/util/Map$Entry;

    iput-object p2, p0, Lccsancom/google/common/collect/Maps$12;->val$transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$12;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$12;->val$transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$12;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Maps$12;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
