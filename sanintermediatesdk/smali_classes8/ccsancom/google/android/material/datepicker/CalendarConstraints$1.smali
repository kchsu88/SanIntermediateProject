.class final Lccsancom/google/android/material/datepicker/CalendarConstraints$1;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .locals 11
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 154
    const-class v0, Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/datepicker/Month;

    .line 155
    .local v0, "start":Lccsancom/google/android/material/datepicker/Month;
    const-class v1, Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lccsancom/google/android/material/datepicker/Month;

    .line 156
    .local v7, "end":Lccsancom/google/android/material/datepicker/Month;
    const-class v1, Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lccsancom/google/android/material/datepicker/Month;

    .line 157
    .local v8, "openAt":Lccsancom/google/android/material/datepicker/Month;
    const-class v1, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 158
    .local v9, "validator":Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    new-instance v10, Lccsancom/google/android/material/datepicker/CalendarConstraints;

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, v7

    move-object v4, v9

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/material/datepicker/CalendarConstraints;-><init>(Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/CalendarConstraints$1;)V

    return-object v10
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .param p1, "size"    # I

    .line 164
    new-array v0, p1, [Lccsancom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints$1;->newArray(I)[Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p1

    return-object p1
.end method
