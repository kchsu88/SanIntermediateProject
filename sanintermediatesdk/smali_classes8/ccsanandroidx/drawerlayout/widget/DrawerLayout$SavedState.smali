.class public Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2124
    new-instance v0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2102
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2095
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2103
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2104
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2105
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2106
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2107
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2108
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 2111
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2095
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2112
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2116
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 2117
    iget v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2119
    iget v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2122
    return-void
.end method
