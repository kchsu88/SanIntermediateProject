.class public final Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultReceiverWrapper"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mResultReceiver:Lccsanandroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1917
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    sput-object v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1913
    sget-object v0, Lccsanandroid/os/ResultReceiver;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/ResultReceiver;

    iput-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Lccsanandroid/os/ResultReceiver;

    .line 1914
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Lccsanandroid/os/ResultReceiver;

    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Lccsanandroid/os/ResultReceiver;

    .line 1910
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1931
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1936
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Lccsanandroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/ResultReceiver;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 1937
    return-void
.end method
