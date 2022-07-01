.class Lccsancom/google/android/material/slider/BaseSlider$SliderState;
.super Lccsanandroid/view/View$BaseSavedState;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliderState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/slider/BaseSlider$SliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hasFocus:Z

.field stepSize:F

.field valueFrom:F

.field valueTo:F

.field values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2423
    new-instance v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/slider/BaseSlider$SliderState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 2444
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcel;)V

    .line 2445
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 2446
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 2447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 2448
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 2449
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 2450
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 2451
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/google/android/material/slider/BaseSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/os/Parcel;
    .param p2, "x1"    # Lccsancom/google/android/material/slider/BaseSlider$1;

    .line 2415
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider$SliderState;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 2440
    invoke-direct {p0, p1}, Lccsanandroid/view/View$BaseSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2441
    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2455
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View$BaseSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 2456
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 2457
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 2458
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2459
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 2460
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 2461
    .local v0, "booleans":[Z
    iget-boolean v1, p0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 2462
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBooleanArray([Z)V

    .line 2463
    return-void
.end method
