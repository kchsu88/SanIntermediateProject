.class Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final multiset:Lccsancom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 366
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    .local p1, "multiset":Lccsancom/google/common/collect/ImmutableMultiset;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lccsancom/google/common/collect/ImmutableMultiset;

    .line 368
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 371
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultiset;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
