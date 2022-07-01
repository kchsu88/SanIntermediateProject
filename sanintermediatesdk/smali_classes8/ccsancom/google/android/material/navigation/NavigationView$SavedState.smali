.class public Lccsancom/google/android/material/navigation/NavigationView$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/navigation/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/navigation/NavigationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public menuState:Lccsanandroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 736
    new-instance v0, Lccsancom/google/android/material/navigation/NavigationView$SavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/navigation/NavigationView$SavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 722
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 723
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->menuState:Lccsanandroid/os/Bundle;

    .line 724
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 727
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 728
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 732
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 733
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->menuState:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 734
    return-void
.end method
