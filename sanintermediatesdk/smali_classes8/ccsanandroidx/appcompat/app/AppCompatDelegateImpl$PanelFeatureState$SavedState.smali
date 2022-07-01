.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Lccsanandroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2991
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2962
    return-void
.end method

.method static readFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 3
    .param p0, "source"    # Lccsanandroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 2980
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;-><init>()V

    .line 2981
    .local v0, "savedState":Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    .line 2982
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    .line 2984
    if-eqz v2, :cond_1

    .line 2985
    invoke-virtual {p0, p1}, Lccsanandroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Lccsanandroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Lccsanandroid/os/Bundle;

    .line 2988
    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2966
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2971
    iget v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2972
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2974
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 2977
    :cond_0
    return-void
.end method
