.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 611
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 599
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 608
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 609
    return-void
.end method
