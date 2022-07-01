.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;
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
            "Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field badgeSavedStates:Lccsancom/google/android/material/internal/ParcelableSparseArray;

.field selectedItemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/internal/ParcelableSparseArray;

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lccsancom/google/android/material/internal/ParcelableSparseArray;

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lccsancom/google/android/material/internal/ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 153
    return-void
.end method
