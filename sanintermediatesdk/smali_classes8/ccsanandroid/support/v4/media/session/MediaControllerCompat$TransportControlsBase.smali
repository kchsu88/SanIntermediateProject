.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
.super Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsBase"
.end annotation


# instance fields
.field private mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/session/IMediaSession;)V
    .locals 0
    .param p1, "binder"    # Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1738
    invoke-direct {p0}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    .line 1739
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    .line 1740
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 3

    .line 1853
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->fastForward()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    goto :goto_0

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in fastForward."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 1826
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->pause()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    goto :goto_0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in pause."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1830
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 1781
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->play()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in play."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1790
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->playFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    goto :goto_0

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromMediaId."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1799
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->playFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromSearch."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1803
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1808
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->playFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromUri."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1812
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .line 1745
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->prepare()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepare."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1749
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1754
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->prepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    goto :goto_0

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1763
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->prepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    goto :goto_0

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromSearch."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1772
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->prepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromUri."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public rewind()V
    .locals 3

    .line 1871
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->rewind()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    goto :goto_0

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in rewind."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .line 1844
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->seekTo(J)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    goto :goto_0

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in seekTo."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendCustomAction(Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "customAction"    # Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .param p2, "args"    # Lccsanandroid/os/Bundle;

    .line 1933
    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1934
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lccsanandroid/os/Bundle;

    .line 1938
    invoke-static {p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompat;->validateCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1940
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    goto :goto_0

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCustomAction."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1944
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setCaptioningEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1907
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/IMediaSession;->setCaptioningEnabled(Z)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    goto :goto_0

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setCaptioningEnabled."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setRating(Lccsanandroid/support/v4/media/RatingCompat;)V
    .locals 3
    .param p1, "rating"    # Lccsanandroid/support/v4/media/RatingCompat;

    .line 1889
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/IMediaSession;->rate(Lccsanandroid/support/v4/media/RatingCompat;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1892
    goto :goto_0

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setRating."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setRating(Lccsanandroid/support/v4/media/RatingCompat;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "rating"    # Lccsanandroid/support/v4/media/RatingCompat;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1898
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->rateWithExtras(Lccsanandroid/support/v4/media/RatingCompat;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    goto :goto_0

    .line 1899
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setRating."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 1916
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/IMediaSession;->setRepeatMode(I)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setRepeatMode."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1920
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 3
    .param p1, "shuffleMode"    # I

    .line 1925
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/IMediaSession;->setShuffleMode(I)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    goto :goto_0

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setShuffleMode."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1929
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToNext()V
    .locals 3

    .line 1862
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->next()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    goto :goto_0

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToNext."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToPrevious()V
    .locals 3

    .line 1880
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->previous()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    goto :goto_0

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToPrevious."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1884
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 3
    .param p1, "id"    # J

    .line 1817
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/IMediaSession;->skipToQueueItem(J)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToQueueItem."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1835
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Lccsanandroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->stop()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    goto :goto_0

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in stop."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method
