.class Lccsancom/google/common/collect/LinkedListMultimap$KeyList;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field count:I

.field head:Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field tail:Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$KeyList;, "Lccsancom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    .local p1, "firstNode":Lccsancom/google/common/collect/LinkedListMultimap$Node;, "Lccsancom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$KeyList;->head:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 144
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$KeyList;->tail:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p1, Lccsancom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 146
    iput-object v0, p1, Lccsancom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 148
    return-void
.end method
