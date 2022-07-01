.class Lccsanandroidx/core/widget/NestedScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/widget/NestedScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/core/widget/NestedScrollView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/core/widget/NestedScrollView$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2129
    new-instance v0, Lccsanandroidx/core/widget/NestedScrollView$SavedState;

    invoke-direct {v0, p1}, Lccsanandroidx/core/widget/NestedScrollView$SavedState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 2126
    invoke-virtual {p0, p1}, Lccsanandroidx/core/widget/NestedScrollView$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/core/widget/NestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/core/widget/NestedScrollView$SavedState;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 2134
    new-array v0, p1, [Lccsanandroidx/core/widget/NestedScrollView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 2126
    invoke-virtual {p0, p1}, Lccsanandroidx/core/widget/NestedScrollView$SavedState$1;->newArray(I)[Lccsanandroidx/core/widget/NestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method
