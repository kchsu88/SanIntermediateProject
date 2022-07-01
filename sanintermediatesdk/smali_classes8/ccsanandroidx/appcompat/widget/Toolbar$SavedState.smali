.class public Lccsanandroidx/appcompat/widget/Toolbar$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/Toolbar;
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
            "Lccsanandroidx/appcompat/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2423
    new-instance v0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 2403
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2404
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2407
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2408
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 2409
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 2410
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 2413
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2414
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2418
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 2419
    iget v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2420
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2421
    return-void
.end method
