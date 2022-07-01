.class Lccsancom/vungle/warren/ui/state/BundleOptionsState$1;
.super Ljava/lang/Object;
.source "BundleOptionsState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/state/BundleOptionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/vungle/warren/ui/state/BundleOptionsState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/vungle/warren/ui/state/BundleOptionsState;
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 105
    new-instance v0, Lccsancom/vungle/warren/ui/state/BundleOptionsState;

    invoke-direct {v0, p1}, Lccsancom/vungle/warren/ui/state/BundleOptionsState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/state/BundleOptionsState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/vungle/warren/ui/state/BundleOptionsState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/vungle/warren/ui/state/BundleOptionsState;
    .locals 1
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Lccsancom/vungle/warren/ui/state/BundleOptionsState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/state/BundleOptionsState$1;->newArray(I)[Lccsancom/vungle/warren/ui/state/BundleOptionsState;

    move-result-object p1

    return-object p1
.end method
