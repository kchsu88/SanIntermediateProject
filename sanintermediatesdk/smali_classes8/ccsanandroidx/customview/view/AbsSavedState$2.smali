.class final Lccsanandroidx/customview/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/customview/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsanandroidx/customview/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/customview/view/AbsSavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/view/AbsSavedState$2;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/customview/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/customview/view/AbsSavedState;
    .locals 3
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 91
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 92
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 95
    sget-object v1, Lccsanandroidx/customview/view/AbsSavedState;->EMPTY_STATE:Lccsanandroidx/customview/view/AbsSavedState;

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "superState must be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState$2;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState$2;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/customview/view/AbsSavedState;
    .locals 1
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Lccsanandroidx/customview/view/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState$2;->newArray(I)[Lccsanandroidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method
