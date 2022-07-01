.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 2999
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2994
    invoke-static {p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2991
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2991
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 3004
    new-array v0, p1, [Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2991
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->newArray(I)[Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method
