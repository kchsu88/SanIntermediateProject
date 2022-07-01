.class final Lccsancom/google/common/collect/Iterators$ArrayItr;
.super Lccsancom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractIndexedListIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lccsancom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1033
    new-instance v0, Lccsancom/google/common/collect/Iterators$ArrayItr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lccsancom/google/common/collect/Iterators$ArrayItr;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lccsancom/google/common/collect/Iterators$ArrayItr;->EMPTY:Lccsancom/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1039
    .local p0, "this":Lccsancom/google/common/collect/Iterators$ArrayItr;, "Lccsancom/google/common/collect/Iterators$ArrayItr<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p3, p4}, Lccsancom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 1040
    iput-object p1, p0, Lccsancom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    .line 1041
    iput p2, p0, Lccsancom/google/common/collect/Iterators$ArrayItr;->offset:I

    .line 1042
    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lccsancom/google/common/collect/Iterators$ArrayItr;, "Lccsancom/google/common/collect/Iterators$ArrayItr<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/Iterators$ArrayItr;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
