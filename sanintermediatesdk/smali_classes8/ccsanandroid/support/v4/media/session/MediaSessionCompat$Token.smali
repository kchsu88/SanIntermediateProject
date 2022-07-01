.class public final Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
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
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

.field private final mInner:Ljava/lang/Object;

.field private mSessionToken2Bundle:Lccsanandroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1726
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token$1;

    invoke-direct {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "inner"    # Ljava/lang/Object;

    .line 1556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;Lccsanandroid/os/Bundle;)V

    .line 1557
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;)V
    .locals 1
    .param p1, "inner"    # Ljava/lang/Object;
    .param p2, "extraBinder"    # Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1560
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;Lccsanandroid/os/Bundle;)V

    .line 1561
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "inner"    # Ljava/lang/Object;
    .param p2, "extraBinder"    # Lccsanandroid/support/v4/media/session/IMediaSession;
    .param p3, "token2Bundle"    # Lccsanandroid/os/Bundle;

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1564
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    .line 1565
    iput-object p2, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1566
    iput-object p3, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mSessionToken2Bundle:Lccsanandroid/os/Bundle;

    .line 1567
    return-void
.end method

.method public static fromBundle(Lccsanandroid/os/Bundle;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 5
    .param p0, "tokenBundle"    # Lccsanandroid/os/Bundle;

    .line 1716
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1717
    return-object v0

    .line 1719
    :cond_0
    nop

    .line 1720
    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    invoke-static {p0, v1}, Lccsanandroidx/core/app/BundleCompat;->getBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v1

    .line 1719
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    .line 1721
    .local v1, "extraSession":Lccsanandroid/support/v4/media/session/IMediaSession;
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v2

    .line 1722
    .local v2, "token2Bundle":Lccsanandroid/os/Bundle;
    const-string v3, "android.support.v4.media.session.TOKEN"

    invoke-virtual {p0, v3}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1723
    .local v3, "token":Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v4, v3, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-direct {v0, v4, v1, v2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;Lccsanandroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public static fromToken(Ljava/lang/Object;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .param p0, "token"    # Ljava/lang/Object;

    .line 1581
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public static fromToken(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .param p0, "token"    # Ljava/lang/Object;
    .param p1, "extraBinder"    # Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1599
    if-eqz p0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1600
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21;->verifyToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lccsanandroid/support/v4/media/session/IMediaSession;)V

    return-object v0

    .line 1602
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1607
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1629
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1630
    return v0

    .line 1632
    :cond_0
    instance-of v1, p1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1633
    return v2

    .line 1636
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1637
    .local v1, "other":Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    iget-object v3, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1638
    iget-object v3, v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1640
    :cond_3
    iget-object v0, v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1641
    return v2

    .line 1643
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExtraBinder()Lccsanandroid/support/v4/media/session/IMediaSession;
    .locals 1

    .line 1664
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    return-object v0
.end method

.method public getSessionToken2Bundle()Lccsanandroid/os/Bundle;
    .locals 1

    .line 1680
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mSessionToken2Bundle:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1

    .line 1656
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1621
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1622
    const/4 v0, 0x0

    return v0

    .line 1624
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setExtraBinder(Lccsanandroid/support/v4/media/session/IMediaSession;)V
    .locals 0
    .param p1, "extraBinder"    # Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1672
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1673
    return-void
.end method

.method public setSessionToken2Bundle(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "token2Bundle"    # Lccsanandroid/os/Bundle;

    .line 1688
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mSessionToken2Bundle:Lccsanandroid/os/Bundle;

    .line 1689
    return-void
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 3

    .line 1696
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1697
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.TOKEN"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 1698
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_0

    .line 1699
    invoke-interface {v1}, Lccsanandroid/support/v4/media/session/IMediaSession;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    invoke-static {v0, v2, v1}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 1701
    :cond_0
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mSessionToken2Bundle:Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1702
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1704
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1612
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    goto :goto_0

    .line 1615
    :cond_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/os/IBinder;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 1617
    :goto_0
    return-void
.end method
