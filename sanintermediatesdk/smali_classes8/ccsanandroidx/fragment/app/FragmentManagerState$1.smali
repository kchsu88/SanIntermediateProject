.class final Lccsanandroidx/fragment/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManagerState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/fragment/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/fragment/app/FragmentManagerState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 62
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentManagerState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/fragment/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/fragment/app/FragmentManagerState;
    .locals 1
    .param p1, "size"    # I

    .line 67
    new-array v0, p1, [Lccsanandroidx/fragment/app/FragmentManagerState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentManagerState$1;->newArray(I)[Lccsanandroidx/fragment/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method
