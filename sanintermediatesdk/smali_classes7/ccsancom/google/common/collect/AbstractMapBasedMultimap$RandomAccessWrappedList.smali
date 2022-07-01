.class Lccsancom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;
.super Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RandomAccessWrappedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.Wrapped",
        "List;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1    # Lccsancom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 885
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.RandomAccessWrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    .line 886
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 887
    return-void
.end method
