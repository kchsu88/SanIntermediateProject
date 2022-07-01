.class final Lccsanandroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Lccsanandroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field mInstance:Lccsanandroidx/fragment/app/Fragment;

.field final mMaxLifecycleState:I

.field final mRemoving:Z

.field final mRetainInstance:Z

.field mSavedFragmentState:Lccsanandroid/os/Bundle;

.field final mTag:Ljava/lang/String;

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lccsanandroidx/fragment/app/FragmentState$1;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentState$1;-><init>()V

    sput-object v0, Lccsanandroidx/fragment/app/FragmentState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 66
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 67
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    .line 68
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 70
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRemoving:Z

    .line 71
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mDetached:Z

    .line 72
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readBundle()Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mArguments:Lccsanandroid/os/Bundle;

    .line 73
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mHidden:Z

    .line 74
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readBundle()Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    .line 75
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    .line 76
    return-void
.end method

.method constructor <init>(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Lccsanandroidx/fragment/app/Fragment;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Lccsanandroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 51
    iget v0, p1, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 52
    iget v0, p1, Lccsanandroidx/fragment/app/Fragment;->mContainerId:I

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    .line 53
    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 54
    iget-boolean v0, p1, Lccsanandroidx/fragment/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 55
    iget-boolean v0, p1, Lccsanandroidx/fragment/app/Fragment;->mRemoving:Z

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRemoving:Z

    .line 56
    iget-boolean v0, p1, Lccsanandroidx/fragment/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mDetached:Z

    .line 57
    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment;->mArguments:Lccsanandroid/os/Bundle;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mArguments:Lccsanandroid/os/Bundle;

    .line 58
    iget-boolean v0, p1, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mHidden:Z

    .line 59
    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment;->mMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Ljava/lang/ClassLoader;Lccsanandroidx/fragment/app/FragmentFactory;)Lccsanandroidx/fragment/app/Fragment;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "factory"    # Lccsanandroidx/fragment/app/FragmentFactory;

    .line 80
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mArguments:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lccsanandroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    .line 86
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mArguments:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/Fragment;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    .line 97
    :goto_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 99
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mRestored:Z

    .line 100
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mFragmentId:I

    iput v1, v0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    .line 101
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    iput v1, v0, Lccsanandroidx/fragment/app/Fragment;->mContainerId:I

    .line 102
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 104
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mRemoving:Z

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mRemoving:Z

    .line 105
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mDetached:Z

    .line 106
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    .line 107
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    invoke-static {}, Lccsanandroidx/lifecycle/Lifecycle$State;->values()[Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iget v2, p0, Lccsanandroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment;->mMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 109
    sget-boolean v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instantiated fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mInstance:Lccsanandroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ")}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v1, :cond_0

    .line 126
    const-string v1, " fromLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    if-eqz v1, :cond_1

    .line 129
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v1, :cond_3

    .line 137
    const-string v1, " retainInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mRemoving:Z

    if-eqz v1, :cond_4

    .line 140
    const-string v1, " removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v1, :cond_5

    .line 143
    const-string v1, " detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_5
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz v1, :cond_6

    .line 146
    const-string v1, " hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mRemoving:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mDetached:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mArguments:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 168
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mHidden:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 170
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
