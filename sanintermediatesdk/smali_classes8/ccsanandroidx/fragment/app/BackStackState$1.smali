.class final Lccsanandroidx/fragment/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/BackStackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/fragment/app/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/fragment/app/BackStackState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 174
    new-instance v0, Lccsanandroidx/fragment/app/BackStackState;

    invoke-direct {v0, p1}, Lccsanandroidx/fragment/app/BackStackState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/BackStackState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/fragment/app/BackStackState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/fragment/app/BackStackState;
    .locals 1
    .param p1, "size"    # I

    .line 179
    new-array v0, p1, [Lccsanandroidx/fragment/app/BackStackState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/BackStackState$1;->newArray(I)[Lccsanandroidx/fragment/app/BackStackState;

    move-result-object p1

    return-object p1
.end method
