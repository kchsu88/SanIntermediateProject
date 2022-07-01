.class Lccsanandroidx/transition/TransitionValuesMaps;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# instance fields
.field final mIdValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mItemIdValues:Lccsanandroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/LongSparseArray<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mNameValues:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mViewValues:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionValuesMaps;->mViewValues:Lccsanandroidx/collection/ArrayMap;

    .line 29
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionValuesMaps;->mIdValues:Lccsanandroid/util/SparseArray;

    .line 31
    new-instance v0, Lccsanandroidx/collection/LongSparseArray;

    invoke-direct {v0}, Lccsanandroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionValuesMaps;->mItemIdValues:Lccsanandroidx/collection/LongSparseArray;

    .line 33
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionValuesMaps;->mNameValues:Lccsanandroidx/collection/ArrayMap;

    return-void
.end method
