.class Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/CheckableImageButton;
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
            "Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 166
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 167
    invoke-direct {p0, p1}, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;->readFromParcel(Lccsanandroid/os/Parcel;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 162
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 163
    return-void
.end method

.method private readFromParcel(Lccsanandroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 177
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    .line 178
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 173
    iget-boolean v0, p0, Lccsancom/google/android/material/internal/CheckableImageButton$SavedState;->checked:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
