.class final Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 2433
    new-instance v0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2430
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 2438
    new-array v0, p1, [Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2430
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState$1;->newArray(I)[Lccsanandroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
