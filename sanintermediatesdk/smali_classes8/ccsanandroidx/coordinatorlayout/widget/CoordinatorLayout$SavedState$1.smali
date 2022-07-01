.class final Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 3382
    new-instance v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 3377
    new-instance v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3374
    invoke-virtual {p0, p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 3374
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 3387
    new-array v0, p1, [Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3374
    invoke-virtual {p0, p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;->newArray(I)[Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
