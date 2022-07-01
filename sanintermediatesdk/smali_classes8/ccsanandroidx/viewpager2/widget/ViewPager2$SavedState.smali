.class Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
.super Lccsanandroid/view/View$BaseSavedState;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdapterState:Lccsanandroid/os/Parcelable;

.field mCurrentItem:I

.field mRecyclerViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 390
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcel;)V

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->readValues(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 392
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 385
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 386
    invoke-direct {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->readValues(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 387
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 395
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 396
    return-void
.end method

.method private readValues(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 399
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 400
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 401
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Lccsanandroid/os/Parcelable;

    .line 402
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 406
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View$BaseSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 407
    iget v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Lccsanandroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 410
    return-void
.end method
