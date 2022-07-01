.class Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;
.super Lccsanandroid/view/AbsSavedState;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSliderState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private minSeparation:F

.field private separationUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 192
    const-class v0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroid/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 193
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    .line 194
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/google/android/material/slider/RangeSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/os/Parcel;
    .param p2, "x1"    # Lccsancom/google/android/material/slider/RangeSlider$1;

    .line 182
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 188
    invoke-direct {p0, p1}, Lccsanandroid/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 182
    iget v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    return v0
.end method

.method static synthetic access$002(Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;F)F
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;
    .param p1, "x1"    # F

    .line 182
    iput p1, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    return p1
.end method

.method static synthetic access$100(Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 182
    iget v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    return v0
.end method

.method static synthetic access$102(Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;
    .param p1, "x1"    # I

    .line 182
    iput p1, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    invoke-super {p0, p1, p2}, Lccsanandroid/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 200
    iget v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget v0, p0, Lccsancom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
