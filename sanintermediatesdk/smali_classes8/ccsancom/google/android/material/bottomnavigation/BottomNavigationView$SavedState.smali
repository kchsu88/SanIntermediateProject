.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;
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
            "Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field menuPresenterState:Lccsanandroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 801
    new-instance v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 784
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 785
    if-nez p2, :cond_0

    .line 786
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 788
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->readFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 789
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 780
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 781
    return-void
.end method

.method private readFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 798
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Lccsanandroid/os/Bundle;

    .line 799
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 793
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 794
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 795
    return-void
.end method
