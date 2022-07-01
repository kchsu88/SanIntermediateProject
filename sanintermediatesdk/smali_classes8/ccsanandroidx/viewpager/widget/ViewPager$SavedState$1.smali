.class final Lccsanandroidx/viewpager/widget/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager/widget/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsanandroidx/viewpager/widget/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/viewpager/widget/ViewPager$SavedState;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 1420
    new-instance v0, Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsanandroidx/viewpager/widget/ViewPager$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/viewpager/widget/ViewPager$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1415
    new-instance v0, Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager/widget/ViewPager$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/viewpager/widget/ViewPager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1424
    new-array v0, p1, [Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager/widget/ViewPager$SavedState$1;->newArray(I)[Lccsanandroidx/viewpager/widget/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
