.class final Lccsancom/google/android/material/datepicker/SingleDateSelector$2;
.super Ljava/lang/Object;
.source "SingleDateSelector.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/SingleDateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/datepicker/SingleDateSelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/SingleDateSelector;
    .locals 2
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 171
    new-instance v0, Lccsancom/google/android/material/datepicker/SingleDateSelector;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/SingleDateSelector;-><init>()V

    .line 172
    .local v0, "singleDateSelector":Lccsancom/google/android/material/datepicker/SingleDateSelector;
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->access$102(Lccsancom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 173
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/SingleDateSelector$2;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/SingleDateSelector;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/datepicker/SingleDateSelector;
    .locals 1
    .param p1, "size"    # I

    .line 179
    new-array v0, p1, [Lccsancom/google/android/material/datepicker/SingleDateSelector;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/SingleDateSelector$2;->newArray(I)[Lccsancom/google/android/material/datepicker/SingleDateSelector;

    move-result-object p1

    return-object p1
.end method
