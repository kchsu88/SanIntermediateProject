.class final Lccsancom/google/android/material/button/MaterialButton$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialButton.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/button/MaterialButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsancom/google/android/material/button/MaterialButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/button/MaterialButton$SavedState;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 1242
    new-instance v0, Lccsancom/google/android/material/button/MaterialButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/material/button/MaterialButton$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsancom/google/android/material/button/MaterialButton$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1236
    new-instance v0, Lccsancom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/button/MaterialButton$SavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1232
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButton$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1232
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/button/MaterialButton$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsancom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/button/MaterialButton$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1248
    new-array v0, p1, [Lccsancom/google/android/material/button/MaterialButton$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1232
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButton$SavedState$1;->newArray(I)[Lccsancom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method
