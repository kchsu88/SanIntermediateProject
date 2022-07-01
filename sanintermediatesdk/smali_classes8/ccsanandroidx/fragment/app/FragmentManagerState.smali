.class final Lccsanandroidx/fragment/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManagerState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/fragment/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:[Lccsanandroidx/fragment/app/BackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerState$1;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Lccsanandroidx/fragment/app/FragmentManagerState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 37
    sget-object v0, Lccsanandroidx/fragment/app/FragmentState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->createTypedArrayList(Lccsanandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lccsanandroidx/fragment/app/BackStackState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->createTypedArray(Lccsanandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/fragment/app/BackStackState;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mBackStack:[Lccsanandroidx/fragment/app/BackStackState;

    .line 40
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mBackStack:[Lccsanandroidx/fragment/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Lccsanandroid/os/Parcel;->writeTypedArray([Lccsanandroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
