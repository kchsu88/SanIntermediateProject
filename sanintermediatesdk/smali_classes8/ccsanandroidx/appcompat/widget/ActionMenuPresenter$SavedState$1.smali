.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 615
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 620
    new-array v0, p1, [Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->newArray(I)[Lccsanandroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
