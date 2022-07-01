.class public Lccsanenhance/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanenhance/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanenhance/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsanandroid/os/Parcel;)Lccsanenhance/b/b;
    .locals 2

    .line 1
    new-instance v0, Lccsanenhance/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsanenhance/b/b;-><init>(Lccsanandroid/os/Parcel;Lccsanenhance/b/b$a;)V

    return-object v0
.end method

.method public a(I)[Lccsanenhance/b/b;
    .locals 0

    .line 2
    new-array p1, p1, [Lccsanenhance/b/b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsanenhance/b/b$a;->a(Lccsanandroid/os/Parcel;)Lccsanenhance/b/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsanenhance/b/b$a;->a(I)[Lccsanenhance/b/b;

    move-result-object p1

    return-object p1
.end method
