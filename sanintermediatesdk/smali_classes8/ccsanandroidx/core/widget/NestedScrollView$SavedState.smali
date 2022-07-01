.class Lccsanandroidx/core/widget/NestedScrollView$SavedState;
.super Lccsanandroid/view/View$BaseSavedState;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/widget/NestedScrollView;
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
            "Lccsanandroidx/core/widget/NestedScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public scrollPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2125
    new-instance v0, Lccsanandroidx/core/widget/NestedScrollView$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/core/widget/NestedScrollView$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/core/widget/NestedScrollView$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2107
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcel;)V

    .line 2108
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 2109
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    .line 2103
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2104
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalScrollView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scrollPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2120
    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 2113
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View$BaseSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 2114
    iget v0, p0, Lccsanandroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2115
    return-void
.end method
