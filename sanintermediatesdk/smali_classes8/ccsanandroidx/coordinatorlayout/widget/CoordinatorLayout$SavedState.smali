.class public Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3373
    new-instance v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 3335
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3337
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 3339
    .local v0, "size":I
    new-array v1, v0, [I

    .line 3340
    .local v1, "ids":[I
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readIntArray([I)V

    .line 3342
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Lccsanandroid/os/Parcelable;

    move-result-object v2

    .line 3344
    .local v2, "states":[Lccsanandroid/os/Parcelable;
    new-instance v3, Lccsanandroid/util/SparseArray;

    invoke-direct {v3, v0}, Lccsanandroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Lccsanandroid/util/SparseArray;

    .line 3345
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3346
    iget-object v4, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Lccsanandroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3348
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 3351
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 3352
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3356
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 3358
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Lccsanandroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3359
    .local v0, "size":I
    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 3361
    new-array v1, v0, [I

    .line 3362
    .local v1, "ids":[I
    new-array v2, v0, [Lccsanandroid/os/Parcelable;

    .line 3364
    .local v2, "states":[Lccsanandroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 3365
    iget-object v4, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v4, v3}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3366
    iget-object v4, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v4, v3}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/Parcelable;

    aput-object v4, v2, v3

    .line 3364
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3368
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->writeIntArray([I)V

    .line 3369
    invoke-virtual {p1, v2, p2}, Lccsanandroid/os/Parcel;->writeParcelableArray([Lccsanandroid/os/Parcelable;I)V

    .line 3371
    return-void
.end method
