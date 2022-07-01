.class final Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeysSerializedForm"
.end annotation


# instance fields
.field final multimap:Lccsancom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "**>;)V"
        }
    .end annotation

    .line 644
    .local p1, "multimap":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    .line 646
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 649
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->keys()Lccsancom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
