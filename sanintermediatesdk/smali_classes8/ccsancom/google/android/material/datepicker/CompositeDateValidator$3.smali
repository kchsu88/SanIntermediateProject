.class final Lccsancom/google/android/material/datepicker/CompositeDateValidator$3;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/datepicker/CompositeDateValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/CompositeDateValidator;
    .locals 6
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 114
    const-class v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "validators":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, "id":I
    const/4 v2, 0x0

    .line 118
    .local v2, "operator":Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 119
    invoke-static {}, Lccsancom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 121
    invoke-static {}, Lccsancom/google/android/material/datepicker/CompositeDateValidator;->access$100()Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lccsancom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    .line 126
    :goto_0
    new-instance v3, Lccsancom/google/android/material/datepicker/CompositeDateValidator;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lccsancom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;Lccsancom/google/android/material/datepicker/CompositeDateValidator$1;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/CompositeDateValidator$3;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/datepicker/CompositeDateValidator;
    .locals 1
    .param p1, "size"    # I

    .line 132
    new-array v0, p1, [Lccsancom/google/android/material/datepicker/CompositeDateValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/CompositeDateValidator$3;->newArray(I)[Lccsancom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p1

    return-object p1
.end method
