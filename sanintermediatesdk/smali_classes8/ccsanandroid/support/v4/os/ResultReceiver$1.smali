.class Lccsanandroid/support/v4/os/ResultReceiver$1;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/os/ResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/os/ResultReceiver;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 148
    new-instance v0, Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/os/ResultReceiver;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/os/ResultReceiver$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/os/ResultReceiver;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 152
    new-array v0, p1, [Lccsanandroid/support/v4/os/ResultReceiver;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/os/ResultReceiver$1;->newArray(I)[Lccsanandroid/support/v4/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method
