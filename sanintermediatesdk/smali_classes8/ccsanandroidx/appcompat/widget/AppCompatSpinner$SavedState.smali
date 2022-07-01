.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;
.super Lccsanandroid/view/View$BaseSavedState;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;
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
            "Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mShowDropdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 671
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 661
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcel;)V

    .line 662
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    .line 663
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 657
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 658
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 667
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View$BaseSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 668
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeByte(B)V

    .line 669
    return-void
.end method
