.class final Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
    .locals 2
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 415
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Lccsanandroid/os/Parcel;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 427
    new-array v0, p1, [Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;->newArray(I)[Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method
