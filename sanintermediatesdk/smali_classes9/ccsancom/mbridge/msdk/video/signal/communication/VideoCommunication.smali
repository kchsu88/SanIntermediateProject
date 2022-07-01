.class public Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;
.super Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;
.source "VideoCommunication.java"


# instance fields
.field private e:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;-><init>()V

    .line 10
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createWebview(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewRect(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->hideView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic L(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewScale(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewReload(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPlay(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPause(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerResume(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerStop(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->init(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aa(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerMute(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ab(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ac(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ad(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ae(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic af(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ag(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeAd(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ah(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->broadcast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ai(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aj(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ak(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic al(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic am(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic an(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ao(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ap(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aq(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ar(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic as(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic at(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCutout(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic au(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic av(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aw(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ax(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->click(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showAlertView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeWeb(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadads(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendSubView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 478
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendSubView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$28;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$28;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    :goto_0
    return-void
.end method

.method public appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 492
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$29;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$29;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    :goto_0
    return-void
.end method

.method public bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 506
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$30;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$30;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    :goto_0
    return-void
.end method

.method public broadcast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 843
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->broadcast(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$57;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$57;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 853
    :goto_0
    return-void
.end method

.method public clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 997
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$69;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$69;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    :goto_0
    return-void
.end method

.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->click(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$12;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$12;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :goto_0
    return-void
.end method

.method public closeAd(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 829
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeAd(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$55;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$55;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    :goto_0
    return-void
.end method

.method public closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$75;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$75;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :goto_0
    return-void
.end method

.method public closeWeb(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 295
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->closeWeb(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$14;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$14;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void
.end method

.method public createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 941
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$64;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$64;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    :goto_0
    return-void
.end method

.method public createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 394
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$21;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$21;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    :goto_0
    return-void
.end method

.method public createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 408
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$22;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$22;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :goto_0
    return-void
.end method

.method public createWebview(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 380
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->createWebview(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$20;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$20;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :goto_0
    return-void
.end method

.method public destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 422
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$24;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$24;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :goto_0
    return-void
.end method

.method public getAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 983
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAllCache(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$68;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$68;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 993
    :goto_0
    return-void
.end method

.method public getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1025
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$71;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$71;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1035
    :goto_0
    return-void
.end method

.method public getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 436
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$25;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$25;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    :goto_0
    return-void
.end method

.method public getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$2;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :goto_0
    return-void
.end method

.method public getCutout(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1011
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getCutout(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$70;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$70;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1021
    :goto_0
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 324
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$16;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$16;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    :goto_0
    return-void
.end method

.method public getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1039
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$72;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$72;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1049
    :goto_0
    return-void
.end method

.method public getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1053
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1063
    :goto_0
    return-void
.end method

.method public getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 310
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$15;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$15;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    :goto_0
    return-void
.end method

.method public getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1067
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$74;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$74;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1077
    :goto_0
    return-void
.end method

.method public handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 913
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$62;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$62;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 923
    :goto_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$7;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$7;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :goto_0
    return-void
.end method

.method public hideView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 520
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->hideView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$31;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$31;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    :goto_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 899
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$61;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$61;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 909
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->init(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$1;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :goto_0
    return-void
.end method

.method public insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 590
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$37;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$37;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    :goto_0
    return-void
.end method

.method public insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 604
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$38;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$38;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    :goto_0
    return-void
.end method

.method public isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$8;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$8;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :goto_0
    return-void
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 857
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$58;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$58;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    :goto_0
    return-void
.end method

.method public loadads(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 338
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadads(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$17;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$17;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    :goto_0
    return-void
.end method

.method public loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 927
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$63;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$63;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 937
    :goto_0
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$5;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$5;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 267
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :goto_0
    return-void
.end method

.method public playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 253
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$10;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$10;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :goto_0
    return-void
.end method

.method public playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 772
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$51;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$51;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    :goto_0
    return-void
.end method

.method public playerMute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 744
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerMute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$49;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$49;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 754
    :goto_0
    return-void
.end method

.method public playerPause(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 688
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPause(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$44;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$44;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :goto_0
    return-void
.end method

.method public playerPlay(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 674
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerPlay(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$43;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$43;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    :goto_0
    return-void
.end method

.method public playerResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 702
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerResume(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$46;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$46;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    :goto_0
    return-void
.end method

.method public playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 800
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$53;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$53;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    :goto_0
    return-void
.end method

.method public playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 786
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$52;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$52;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 796
    :goto_0
    return-void
.end method

.method public playerStop(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 716
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerStop(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$47;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$47;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    :goto_0
    return-void
.end method

.method public playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 758
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$50;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$50;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :goto_0
    return-void
.end method

.method public playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 730
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$48;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$48;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    :goto_0
    return-void
.end method

.method public preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 814
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$54;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$54;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    :goto_0
    return-void
.end method

.method public progressOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$76;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$76;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :goto_0
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 352
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$18;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$18;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    :goto_0
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 238
    const-string v0, "JS-Video-Brigde"

    const-string v1, "VIDEOBridge readyStatus"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$9;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$9;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    :goto_0
    return-void
.end method

.method public removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 969
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$66;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$66;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    :goto_0
    return-void
.end method

.method public removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 464
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$27;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$27;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    :goto_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 366
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$19;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$19;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :goto_0
    return-void
.end method

.method public setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 955
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$65;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$65;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 965
    :goto_0
    return-void
.end method

.method public setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$4;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$4;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :goto_0
    return-void
.end method

.method public setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 871
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$59;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$59;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 881
    :goto_0
    return-void
.end method

.method public setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 562
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$35;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$35;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    :goto_0
    return-void
.end method

.method public setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 548
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$33;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$33;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    :goto_0
    return-void
.end method

.method public setViewRect(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 450
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewRect(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$26;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$26;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    :goto_0
    return-void
.end method

.method public setViewScale(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 576
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->setViewScale(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$36;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$36;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :goto_0
    return-void
.end method

.method public showAlertView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 281
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showAlertView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$13;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$13;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :goto_0
    return-void
.end method

.method public showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$3;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$3;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :goto_0
    return-void
.end method

.method public showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$45;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$45;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_0
    return-void
.end method

.method public showView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 534
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->showView(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$32;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$32;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :goto_0
    return-void
.end method

.method public soundOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$56;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$56;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :goto_0
    return-void
.end method

.method public statistics(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$23;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$23;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 196
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$6;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$6;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$34;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$34;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :goto_0
    return-void
.end method

.method public videoOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 98
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$67;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$67;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :goto_0
    return-void
.end method

.method public webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 885
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$60;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$60;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 895
    :goto_0
    return-void
.end method

.method public webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 646
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    :goto_0
    return-void
.end method

.method public webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 660
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$42;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$42;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    :goto_0
    return-void
.end method

.method public webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 618
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$39;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$39;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :goto_0
    return-void
.end method

.method public webviewReload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 632
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->webviewReload(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$40;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$40;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    :goto_0
    return-void
.end method
